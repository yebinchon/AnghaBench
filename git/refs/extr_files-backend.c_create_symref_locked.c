
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* tempfile; } ;
struct ref_lock {TYPE_3__ lk; } ;
struct files_ref_store {int dummy; } ;
struct TYPE_4__ {char const* buf; } ;
struct TYPE_5__ {int fp; TYPE_1__ filename; } ;


 scalar_t__ commit_ref (struct ref_lock*) ;
 int create_ref_symlink (struct ref_lock*,char const*) ;
 int errno ;
 int error (char*,char const*,char*) ;
 int fdopen_lock_file (TYPE_3__*,char*) ;
 int fprintf (int ,char*,char const*) ;
 scalar_t__ prefer_symlink_refs ;
 char* strerror (int ) ;
 int update_symref_reflog (struct files_ref_store*,struct ref_lock*,char const*,char const*,char const*) ;

__attribute__((used)) static int create_symref_locked(struct files_ref_store *refs,
    struct ref_lock *lock, const char *refname,
    const char *target, const char *logmsg)
{
 if (prefer_symlink_refs && !create_ref_symlink(lock, target)) {
  update_symref_reflog(refs, lock, refname, target, logmsg);
  return 0;
 }

 if (!fdopen_lock_file(&lock->lk, "w"))
  return error("unable to fdopen %s: %s",
        lock->lk.tempfile->filename.buf, strerror(errno));

 update_symref_reflog(refs, lock, refname, target, logmsg);


 fprintf(lock->lk.tempfile->fp, "ref: %s\n", target);
 if (commit_ref(lock) < 0)
  return error("unable to write symref for %s: %s", refname,
        strerror(errno));
 return 0;
}
