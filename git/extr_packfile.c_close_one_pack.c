
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct packed_git {int pack_fd; struct packed_git* next; } ;
struct pack_window {int dummy; } ;
struct TYPE_4__ {TYPE_1__* objects; } ;
struct TYPE_3__ {struct packed_git* packed_git; } ;


 int close_pack_fd (struct packed_git*) ;
 int find_lru_pack (struct packed_git*,struct packed_git**,struct pack_window**,int*) ;
 TYPE_2__* the_repository ;

__attribute__((used)) static int close_one_pack(void)
{
 struct packed_git *p, *lru_p = ((void*)0);
 struct pack_window *mru_w = ((void*)0);
 int accept_windows_inuse = 1;

 for (p = the_repository->objects->packed_git; p; p = p->next) {
  if (p->pack_fd == -1)
   continue;
  find_lru_pack(p, &lru_p, &mru_w, &accept_windows_inuse);
 }

 if (lru_p)
  return close_pack_fd(lru_p);

 return 0;
}
