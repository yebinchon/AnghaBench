
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; TYPE_2__* fields; } ;
typedef TYPE_1__ structdef_t ;
struct TYPE_5__ {char* name; int offset; int type; int maxarray; TYPE_1__* substruct; } ;
typedef TYPE_2__ fielddef_t ;
typedef int FILE ;


 int FT_ARRAY ;





 int FT_TYPE ;
 int MAX_STRINGFIELD ;
 int WriteFloat (int *,float) ;
 int WriteIndent (int *,int) ;
 scalar_t__ fprintf (int *,char*,...) ;
 int qfalse ;
 int qtrue ;

int WriteStructWithIndent(FILE *fp, structdef_t *def, char *structure, int indent)
{
 int i, num;
 void *p;
 fielddef_t *fd;

 if (!WriteIndent(fp, indent)) return qfalse;
 if (fprintf(fp, "{\r\n") < 0) return qfalse;

 indent++;
 for (i = 0; def->fields[i].name; i++)
 {
  fd = &def->fields[i];
  if (!WriteIndent(fp, indent)) return qfalse;
  if (fprintf(fp, "%s\t", fd->name) < 0) return qfalse;
  p = (void *)(structure + fd->offset);
  if (fd->type & FT_ARRAY)
  {
   num = fd->maxarray;
   if (fprintf(fp, "{") < 0) return qfalse;
  }
  else
  {
   num = 1;
  }
  while(num-- > 0)
  {
   switch(fd->type & FT_TYPE)
   {
    case 132:
    {
     if (fprintf(fp, "%d", *(char *) p) < 0) return qfalse;
     p = (char *) p + sizeof(char);
     break;
    }
    case 130:
    {
     if (fprintf(fp, "%d", *(int *) p) < 0) return qfalse;
     p = (char *) p + sizeof(int);
     break;
    }
    case 131:
    {
     if (!WriteFloat(fp, *(float *)p)) return qfalse;
     p = (char *) p + sizeof(float);
     break;
    }
    case 129:
    {
     if (fprintf(fp, "\"%s\"", (char *) p) < 0) return qfalse;
     p = (char *) p + MAX_STRINGFIELD;
     break;
    }
    case 128:
    {
     if (!WriteStructWithIndent(fp, fd->substruct, structure, indent)) return qfalse;
     p = (char *) p + fd->substruct->size;
     break;
    }
   }
   if (fd->type & FT_ARRAY)
   {
    if (num > 0)
    {
     if (fprintf(fp, ",") < 0) return qfalse;
    }
    else
    {
     if (fprintf(fp, "}") < 0) return qfalse;
    }
   }
  }
  if (fprintf(fp, "\r\n") < 0) return qfalse;
 }
 indent--;

 if (!WriteIndent(fp, indent)) return qfalse;
 if (fprintf(fp, "}\r\n") < 0) return qfalse;
 return qtrue;
}
