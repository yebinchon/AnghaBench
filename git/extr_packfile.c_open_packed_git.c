
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_git {int dummy; } ;


 int close_pack_fd (struct packed_git*) ;
 int open_packed_git_1 (struct packed_git*) ;

__attribute__((used)) static int open_packed_git(struct packed_git *p)
{
 if (!open_packed_git_1(p))
  return 0;
 close_pack_fd(p);
 return -1;
}
