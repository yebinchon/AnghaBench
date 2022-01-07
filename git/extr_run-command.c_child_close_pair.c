
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int child_close (int) ;

__attribute__((used)) static void child_close_pair(int fd[2])
{
 child_close(fd[0]);
 child_close(fd[1]);
}
