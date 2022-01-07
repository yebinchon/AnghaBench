
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_git {int pack_fd; } ;


 int close (int) ;
 int pack_open_fds ;

int close_pack_fd(struct packed_git *p)
{
 if (p->pack_fd < 0)
  return 0;

 close(p->pack_fd);
 pack_open_fds--;
 p->pack_fd = -1;

 return 1;
}
