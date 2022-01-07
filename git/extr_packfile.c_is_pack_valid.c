
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_git {int pack_fd; scalar_t__ pack_size; struct pack_window* windows; } ;
struct pack_window {scalar_t__ len; int offset; } ;


 int open_packed_git (struct packed_git*) ;

int is_pack_valid(struct packed_git *p)
{

 if (p->pack_fd != -1)
  return 1;





 if (p->windows) {
  struct pack_window *w = p->windows;

  if (!w->offset && w->len == p->pack_size)
   return 1;
 }


 return !open_packed_git(p);
}
