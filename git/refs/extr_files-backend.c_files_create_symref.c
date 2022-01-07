
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct ref_store {int dummy; } ;
struct ref_lock {int dummy; } ;
struct files_ref_store {int dummy; } ;


 int REF_NO_DEREF ;
 int REF_STORE_WRITE ;
 struct strbuf STRBUF_INIT ;
 int create_symref_locked (struct files_ref_store*,struct ref_lock*,char const*,char const*,char const*) ;
 int error (char*,int ) ;
 struct files_ref_store* files_downcast (struct ref_store*,int ,char*) ;
 struct ref_lock* lock_ref_oid_basic (struct files_ref_store*,char const*,int *,int *,int *,int ,int *,struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;
 int unlock_ref (struct ref_lock*) ;

__attribute__((used)) static int files_create_symref(struct ref_store *ref_store,
          const char *refname, const char *target,
          const char *logmsg)
{
 struct files_ref_store *refs =
  files_downcast(ref_store, REF_STORE_WRITE, "create_symref");
 struct strbuf err = STRBUF_INIT;
 struct ref_lock *lock;
 int ret;

 lock = lock_ref_oid_basic(refs, refname, ((void*)0),
      ((void*)0), ((void*)0), REF_NO_DEREF, ((void*)0),
      &err);
 if (!lock) {
  error("%s", err.buf);
  strbuf_release(&err);
  return -1;
 }

 ret = create_symref_locked(refs, lock, refname, target, logmsg);
 unlock_ref(lock);
 return ret;
}
