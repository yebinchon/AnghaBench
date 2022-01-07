
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_filepair {int status; } ;



 int die (char*) ;

__attribute__((used)) static int check_pair_status(struct diff_filepair *p)
{
 switch (p->status) {
 case 128:
  return 0;
 case 0:
  die("internal error in diff-resolve-rename-copy");
 default:
  return 1;
 }
}
