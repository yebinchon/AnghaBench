
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_file {int dummy; } ;
typedef int FILE ;


 struct lock_file LOCK_INIT ;
 scalar_t__ commit_lock_file (struct lock_file*) ;
 int dump_marks_helper (int *,int ,int ) ;
 int errno ;
 int error (char*,int ,char*) ;
 int error_errno (char*,int ) ;
 int export_marks_file ;
 int failure ;
 int * fdopen_lock_file (struct lock_file*,char*) ;
 scalar_t__ hold_lock_file_for_update (struct lock_file*,int ,int ) ;
 scalar_t__ import_marks_file ;
 int import_marks_file_done ;
 int marks ;
 int rollback_lock_file (struct lock_file*) ;
 char* strerror (int) ;

__attribute__((used)) static void dump_marks(void)
{
 struct lock_file mark_lock = LOCK_INIT;
 FILE *f;

 if (!export_marks_file || (import_marks_file && !import_marks_file_done))
  return;

 if (hold_lock_file_for_update(&mark_lock, export_marks_file, 0) < 0) {
  failure |= error_errno("Unable to write marks file %s",
           export_marks_file);
  return;
 }

 f = fdopen_lock_file(&mark_lock, "w");
 if (!f) {
  int saved_errno = errno;
  rollback_lock_file(&mark_lock);
  failure |= error("Unable to write marks file %s: %s",
   export_marks_file, strerror(saved_errno));
  return;
 }

 dump_marks_helper(f, 0, marks);
 if (commit_lock_file(&mark_lock)) {
  failure |= error_errno("Unable to write file %s",
           export_marks_file);
  return;
 }
}
