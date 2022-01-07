
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct index_state {int dummy; } ;
struct diff_filespec {int oid; int path; scalar_t__ is_stdin; int oid_valid; } ;


 scalar_t__ DIFF_FILE_VALID (struct diff_filespec*) ;
 int die (char*,int ) ;
 int die_errno (char*,int ) ;
 scalar_t__ index_path (struct index_state*,int *,int ,struct stat*,int ) ;
 scalar_t__ lstat (int ,struct stat*) ;
 int oidclr (int *) ;

__attribute__((used)) static void diff_fill_oid_info(struct diff_filespec *one, struct index_state *istate)
{
 if (DIFF_FILE_VALID(one)) {
  if (!one->oid_valid) {
   struct stat st;
   if (one->is_stdin) {
    oidclr(&one->oid);
    return;
   }
   if (lstat(one->path, &st) < 0)
    die_errno("stat '%s'", one->path);
   if (index_path(istate, &one->oid, one->path, &st, 0))
    die("cannot hash %s", one->path);
  }
 }
 else
  oidclr(&one->oid);
}
