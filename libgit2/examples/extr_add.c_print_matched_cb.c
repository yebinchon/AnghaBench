
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct print_payload {int options; int repo; } ;


 unsigned int GIT_STATUS_WT_MODIFIED ;
 unsigned int GIT_STATUS_WT_NEW ;
 int SKIP ;
 scalar_t__ git_status_file (unsigned int*,int ,char const*) ;
 int printf (char*,char const*) ;

int print_matched_cb(const char *path, const char *matched_pathspec, void *payload)
{
 struct print_payload p = *(struct print_payload*)(payload);
 int ret;
 unsigned status;
 (void)matched_pathspec;


 if (git_status_file(&status, p.repo, path)) {
  return -1;
 }

 if ((status & GIT_STATUS_WT_MODIFIED) || (status & GIT_STATUS_WT_NEW)) {
  printf("add '%s'\n", path);
  ret = 0;
 } else {
  ret = 1;
 }

 if ((p.options & SKIP)) {
  ret = 1;
 }

 return ret;
}
