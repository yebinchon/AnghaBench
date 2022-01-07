
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int val ;
typedef scalar_t__ uint32_t ;
typedef int tmp ;
struct TYPE_2__ {int offset; int length; scalar_t__ val_id; scalar_t__ key_id; } ;
typedef TYPE_1__ lmo_entry_t ;
typedef int line ;
typedef int key ;
typedef int FILE ;


 int die (char*) ;
 int extract_string (char*,char*,int) ;
 int fclose (int *) ;
 scalar_t__ feof (int *) ;
 int * fgets (char*,int,int *) ;
 int fileno (int *) ;
 int * fopen (char*,char*) ;
 int fsync (int ) ;
 int memset (char*,int ,int) ;
 int print (char*,int,int,int *) ;
 int print_index (void*,int,int *) ;
 int print_uint32 (int,int *) ;
 void* realloc (void*,int) ;
 scalar_t__ sfh_hash (char*,int) ;
 int strcat (char*,char*) ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;
 int unlink (char*) ;
 int usage (char*) ;

int main(int argc, char *argv[])
{
 char line[4096];
 char key[4096];
 char val[4096];
 char tmp[4096];
 int state = 0;
 int offset = 0;
 int length = 0;
 int n_entries = 0;
 void *array = ((void*)0);
 lmo_entry_t *entry = ((void*)0);
 uint32_t key_id, val_id;

 FILE *in;
 FILE *out;

 if( (argc != 3) || ((in = fopen(argv[1], "r")) == ((void*)0)) || ((out = fopen(argv[2], "w")) == ((void*)0)) )
  usage(argv[0]);

 memset(line, 0, sizeof(key));
 memset(key, 0, sizeof(val));
 memset(val, 0, sizeof(val));

 while( (((void*)0) != fgets(line, sizeof(line), in)) || (state >= 2 && feof(in)) )
 {
  if( state == 0 && strstr(line, "msgid \"") == line )
  {
   switch(extract_string(line, key, sizeof(key)))
   {
    case -1:
     die("Syntax error in msgid");
    case 0:
     state = 1;
     break;
    default:
     state = 2;
   }
  }
  else if( state == 1 || state == 2 )
  {
   if( strstr(line, "msgstr \"") == line || state == 2 )
   {
    switch(extract_string(line, val, sizeof(val)))
    {
     case -1:
      state = 4;
      break;
     default:
      state = 3;
    }
   }
   else
   {
    switch(extract_string(line, tmp, sizeof(tmp)))
    {
     case -1:
      state = 2;
      break;
     default:
      strcat(key, tmp);
    }
   }
  }
  else if( state == 3 )
  {
   switch(extract_string(line, tmp, sizeof(tmp)))
   {
    case -1:
     state = 4;
     break;
    default:
     strcat(val, tmp);
   }
  }

  if( state == 4 )
  {
   if( strlen(key) > 0 && strlen(val) > 0 )
   {
    key_id = sfh_hash(key, strlen(key));
    val_id = sfh_hash(val, strlen(val));

    if( key_id != val_id )
    {
     n_entries++;
     array = realloc(array, n_entries * sizeof(lmo_entry_t));
     entry = (lmo_entry_t *)array + n_entries - 1;

     if (!array)
      die("Out of memory");

     entry->key_id = key_id;
     entry->val_id = val_id;
     entry->offset = offset;
     entry->length = strlen(val);

     length = strlen(val) + ((4 - (strlen(val) % 4)) % 4);

     print(val, length, 1, out);
     offset += length;
    }
   }

   state = 0;
   memset(key, 0, sizeof(key));
   memset(val, 0, sizeof(val));
  }

  memset(line, 0, sizeof(line));
 }

 print_index(array, n_entries, out);

 if( offset > 0 )
 {
  print_uint32(offset, out);
  fsync(fileno(out));
  fclose(out);
 }
 else
 {
  fclose(out);
  unlink(argv[2]);
 }

 fclose(in);
 return(0);
}
