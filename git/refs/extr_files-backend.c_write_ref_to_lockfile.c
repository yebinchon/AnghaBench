
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct ref_lock {int lk; int ref_name; } ;
struct object_id {int dummy; } ;
struct object {scalar_t__ type; } ;
struct TYPE_2__ {int hexsz; } ;


 scalar_t__ OBJ_COMMIT ;
 scalar_t__ close_ref_gently (struct ref_lock*) ;
 int get_lock_file_fd (int *) ;
 int get_lock_file_path (int *) ;
 scalar_t__ is_branch (int ) ;
 char* oid_to_hex (struct object_id const*) ;
 struct object* parse_object (int ,struct object_id const*) ;
 int strbuf_addf (struct strbuf*,char*,char*,...) ;
 TYPE_1__* the_hash_algo ;
 int the_repository ;
 int unlock_ref (struct ref_lock*) ;
 scalar_t__ write_in_full (int,char*,int) ;

__attribute__((used)) static int write_ref_to_lockfile(struct ref_lock *lock,
     const struct object_id *oid, struct strbuf *err)
{
 static char term = '\n';
 struct object *o;
 int fd;

 o = parse_object(the_repository, oid);
 if (!o) {
  strbuf_addf(err,
       "trying to write ref '%s' with nonexistent object %s",
       lock->ref_name, oid_to_hex(oid));
  unlock_ref(lock);
  return -1;
 }
 if (o->type != OBJ_COMMIT && is_branch(lock->ref_name)) {
  strbuf_addf(err,
       "trying to write non-commit object %s to branch '%s'",
       oid_to_hex(oid), lock->ref_name);
  unlock_ref(lock);
  return -1;
 }
 fd = get_lock_file_fd(&lock->lk);
 if (write_in_full(fd, oid_to_hex(oid), the_hash_algo->hexsz) < 0 ||
     write_in_full(fd, &term, 1) < 0 ||
     close_ref_gently(lock) < 0) {
  strbuf_addf(err,
       "couldn't write '%s'", get_lock_file_path(&lock->lk));
  unlock_ref(lock);
  return -1;
 }
 return 0;
}
