
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct ref_lock {int old_oid; } ;
struct object_id {int dummy; } ;
struct files_ref_store {int base; } ;


 int RESOLVE_REF_READING ;
 struct strbuf STRBUF_INIT ;
 int error (char*,int ) ;
 scalar_t__ files_log_ref_write (struct files_ref_store*,char const*,int *,struct object_id*,char const*,int ,struct strbuf*) ;
 int refs_read_ref_full (int *,char const*,int ,struct object_id*,int *) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void update_symref_reflog(struct files_ref_store *refs,
     struct ref_lock *lock, const char *refname,
     const char *target, const char *logmsg)
{
 struct strbuf err = STRBUF_INIT;
 struct object_id new_oid;
 if (logmsg &&
     !refs_read_ref_full(&refs->base, target,
    RESOLVE_REF_READING, &new_oid, ((void*)0)) &&
     files_log_ref_write(refs, refname, &lock->old_oid,
    &new_oid, logmsg, 0, &err)) {
  error("%s", err.buf);
  strbuf_release(&err);
 }
}
