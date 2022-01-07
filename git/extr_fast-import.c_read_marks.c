
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int offset; } ;
struct object_entry {int type; TYPE_1__ idx; int pack_id; } ;
typedef int line ;
typedef enum object_type { ____Placeholder_object_type } object_type ;
typedef int FILE ;


 scalar_t__ ENOENT ;
 int MAX_PACK_ID ;
 int die (char*,char*) ;
 int die_errno (char*,int ) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 struct object_entry* find_object (struct object_id*) ;
 int * fopen (int ,char*) ;
 scalar_t__ get_oid_hex (char*,struct object_id*) ;
 int import_marks_file ;
 int import_marks_file_done ;
 scalar_t__ import_marks_file_ignore_missing ;
 int insert_mark (int ,struct object_entry*) ;
 struct object_entry* insert_object (struct object_id*) ;
 int oid_object_info (int ,struct object_id*,int *) ;
 char* oid_to_hex (struct object_id*) ;
 char* strchr (char*,char) ;
 int strtoumax (char*,char**,int) ;
 int the_repository ;

__attribute__((used)) static void read_marks(void)
{
 char line[512];
 FILE *f = fopen(import_marks_file, "r");
 if (f)
  ;
 else if (import_marks_file_ignore_missing && errno == ENOENT)
  goto done;
 else
  die_errno("cannot read '%s'", import_marks_file);
 while (fgets(line, sizeof(line), f)) {
  uintmax_t mark;
  char *end;
  struct object_id oid;
  struct object_entry *e;

  end = strchr(line, '\n');
  if (line[0] != ':' || !end)
   die("corrupt mark line: %s", line);
  *end = 0;
  mark = strtoumax(line + 1, &end, 10);
  if (!mark || end == line + 1
   || *end != ' ' || get_oid_hex(end + 1, &oid))
   die("corrupt mark line: %s", line);
  e = find_object(&oid);
  if (!e) {
   enum object_type type = oid_object_info(the_repository,
        &oid, ((void*)0));
   if (type < 0)
    die("object not found: %s", oid_to_hex(&oid));
   e = insert_object(&oid);
   e->type = type;
   e->pack_id = MAX_PACK_ID;
   e->idx.offset = 1;
  }
  insert_mark(mark, e);
 }
 fclose(f);
done:
 import_marks_file_done = 1;
}
