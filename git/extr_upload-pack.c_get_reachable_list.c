
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct object_array {int dummy; } ;
struct object {scalar_t__ type; int flags; } ;
struct child_process {int out; } ;
struct TYPE_2__ {unsigned int hexsz; } ;


 struct child_process CHILD_PROCESS_INIT ;
 int GIT_MAX_HEXSZ ;
 scalar_t__ OBJ_COMMIT ;
 int TMP_MARK ;
 int add_object_array (struct object*,int *,struct object_array*) ;
 int close (int ) ;
 scalar_t__ do_reachable_revlist (struct child_process*,struct object_array*,struct object_array*) ;
 scalar_t__ finish_command (struct child_process*) ;
 struct object* get_indexed_object (int) ;
 int get_max_object_index () ;
 struct object* lookup_object (int ,struct object_id*) ;
 scalar_t__ parse_oid_hex (char*,struct object_id*,char const**) ;
 int read_in_full (int ,char*,unsigned int const) ;
 TYPE_1__* the_hash_algo ;
 int the_repository ;

__attribute__((used)) static int get_reachable_list(struct object_array *src,
         struct object_array *reachable)
{
 struct child_process cmd = CHILD_PROCESS_INIT;
 int i;
 struct object *o;
 char namebuf[GIT_MAX_HEXSZ + 2];
 const unsigned hexsz = the_hash_algo->hexsz;

 if (do_reachable_revlist(&cmd, src, reachable) < 0)
  return -1;

 while ((i = read_in_full(cmd.out, namebuf, hexsz + 1)) == hexsz + 1) {
  struct object_id oid;
  const char *p;

  if (parse_oid_hex(namebuf, &oid, &p) || *p != '\n')
   break;

  o = lookup_object(the_repository, &oid);
  if (o && o->type == OBJ_COMMIT) {
   o->flags &= ~TMP_MARK;
  }
 }
 for (i = get_max_object_index(); 0 < i; i--) {
  o = get_indexed_object(i - 1);
  if (o && o->type == OBJ_COMMIT &&
      (o->flags & TMP_MARK)) {
   add_object_array(o, ((void*)0), reachable);
    o->flags &= ~TMP_MARK;
  }
 }
 close(cmd.out);

 if (finish_command(&cmd))
  return -1;

 return 0;
}
