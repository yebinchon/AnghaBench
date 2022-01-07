
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct packed_git {int windows; struct packed_git* next; } ;
struct pack_window {int next; scalar_t__ len; int base; } ;
struct TYPE_4__ {TYPE_1__* objects; } ;
struct TYPE_3__ {struct packed_git* packed_git; } ;


 int free (struct pack_window*) ;
 int munmap (int ,scalar_t__) ;
 int pack_mapped ;
 int pack_open_windows ;
 int scan_windows (struct packed_git*,struct packed_git**,struct pack_window**,struct pack_window**) ;
 TYPE_2__* the_repository ;

__attribute__((used)) static int unuse_one_window(struct packed_git *current)
{
 struct packed_git *p, *lru_p = ((void*)0);
 struct pack_window *lru_w = ((void*)0), *lru_l = ((void*)0);

 if (current)
  scan_windows(current, &lru_p, &lru_w, &lru_l);
 for (p = the_repository->objects->packed_git; p; p = p->next)
  scan_windows(p, &lru_p, &lru_w, &lru_l);
 if (lru_p) {
  munmap(lru_w->base, lru_w->len);
  pack_mapped -= lru_w->len;
  if (lru_l)
   lru_l->next = lru_w->next;
  else
   lru_p->windows = lru_w->next;
  free(lru_w);
  pack_open_windows--;
  return 1;
 }
 return 0;
}
