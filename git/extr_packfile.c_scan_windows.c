
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_git {struct pack_window* windows; } ;
struct pack_window {scalar_t__ last_used; int inuse_cnt; struct pack_window* next; } ;



__attribute__((used)) static void scan_windows(struct packed_git *p,
 struct packed_git **lru_p,
 struct pack_window **lru_w,
 struct pack_window **lru_l)
{
 struct pack_window *w, *w_l;

 for (w_l = ((void*)0), w = p->windows; w; w = w->next) {
  if (!w->inuse_cnt) {
   if (!*lru_w || w->last_used < (*lru_w)->last_used) {
    *lru_p = p;
    *lru_w = w;
    *lru_l = w_l;
   }
  }
  w_l = w;
 }
}
