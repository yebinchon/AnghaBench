
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oid; } ;
struct test_entry {char* name; TYPE_1__ entry; } ;
struct strbuf {int * buf; } ;
struct oidmap_iter {int dummy; } ;
struct oidmap {int dummy; } ;
struct object_id {int dummy; } ;


 int DELIM ;
 scalar_t__ EOF ;
 int FLEX_ALLOC_STR (struct test_entry*,int ,char*) ;
 struct oidmap OIDMAP_INIT ;
 struct strbuf STRBUF_INIT ;
 int free (struct test_entry*) ;
 scalar_t__ get_oid (char*,struct object_id*) ;
 int name ;
 char* oid_to_hex (int *) ;
 int oidcpy (int *,struct object_id*) ;
 int oidmap_free (struct oidmap*,int) ;
 struct test_entry* oidmap_get (struct oidmap*,struct object_id*) ;
 int oidmap_init (struct oidmap*,int ) ;
 int oidmap_iter_init (struct oidmap*,struct oidmap_iter*) ;
 struct test_entry* oidmap_iter_next (struct oidmap_iter*) ;
 struct test_entry* oidmap_put (struct oidmap*,struct test_entry*) ;
 struct test_entry* oidmap_remove (struct oidmap*,struct object_id*) ;
 int printf (char*,char*,...) ;
 int puts (char*) ;
 int setup_git_directory () ;
 int stdin ;
 scalar_t__ strbuf_getline (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strcmp (char*,char*) ;
 char* strtok (int *,int ) ;

int cmd__oidmap(int argc, const char **argv)
{
 struct strbuf line = STRBUF_INIT;
 struct oidmap map = OIDMAP_INIT;

 setup_git_directory();


 oidmap_init(&map, 0);


 while (strbuf_getline(&line, stdin) != EOF) {
  char *cmd, *p1 = ((void*)0), *p2 = ((void*)0);
  struct test_entry *entry;
  struct object_id oid;


  cmd = strtok(line.buf, DELIM);

  if (!cmd || *cmd == '#')
   continue;

  p1 = strtok(((void*)0), DELIM);
  if (p1)
   p2 = strtok(((void*)0), DELIM);

  if (!strcmp("put", cmd) && p1 && p2) {

   if (get_oid(p1, &oid)) {
    printf("Unknown oid: %s\n", p1);
    continue;
   }


   FLEX_ALLOC_STR(entry, name, p2);
   oidcpy(&entry->entry.oid, &oid);


   entry = oidmap_put(&map, entry);


   puts(entry ? entry->name : "NULL");
   free(entry);

  } else if (!strcmp("get", cmd) && p1) {

   if (get_oid(p1, &oid)) {
    printf("Unknown oid: %s\n", p1);
    continue;
   }


   entry = oidmap_get(&map, &oid);


   puts(entry ? entry->name : "NULL");

  } else if (!strcmp("remove", cmd) && p1) {

   if (get_oid(p1, &oid)) {
    printf("Unknown oid: %s\n", p1);
    continue;
   }


   entry = oidmap_remove(&map, &oid);


   puts(entry ? entry->name : "NULL");
   free(entry);

  } else if (!strcmp("iterate", cmd)) {

   struct oidmap_iter iter;
   oidmap_iter_init(&map, &iter);
   while ((entry = oidmap_iter_next(&iter)))
    printf("%s %s\n", oid_to_hex(&entry->entry.oid), entry->name);

  } else {

   printf("Unknown command %s\n", cmd);

  }
 }

 strbuf_release(&line);
 oidmap_free(&map, 1);
 return 0;
}
