
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winch {int fd; int work; int list; } ;


 int __free_winch (int *) ;
 int list_del (int *) ;
 int os_close_file (int) ;

__attribute__((used)) static void free_winch(struct winch *winch)
{
 int fd = winch->fd;
 winch->fd = -1;
 if (fd != -1)
  os_close_file(fd);
 list_del(&winch->list);
 __free_winch(&winch->work);
}
