
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHILD_ERR_DUP2 ;
 int child_die (int ) ;
 scalar_t__ dup2 (int,int) ;

__attribute__((used)) static void child_dup2(int fd, int to)
{
 if (dup2(fd, to) < 0)
  child_die(CHILD_ERR_DUP2);
}
