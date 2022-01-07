
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_git {scalar_t__ mtime; struct pack_window* windows; } ;
struct pack_window {scalar_t__ last_used; scalar_t__ inuse_cnt; struct pack_window* next; } ;



__attribute__((used)) static void find_lru_pack(struct packed_git *p, struct packed_git **lru_p, struct pack_window **mru_w, int *accept_windows_inuse)
{
 struct pack_window *w, *this_mru_w;
 int has_windows_inuse = 0;






 if (*lru_p && !*mru_w && (p->windows || p->mtime > (*lru_p)->mtime))
  return;

 for (w = this_mru_w = p->windows; w; w = w->next) {






  if (w->inuse_cnt) {
   if (*accept_windows_inuse)
    has_windows_inuse = 1;
   else
    return;
  }

  if (w->last_used > this_mru_w->last_used)
   this_mru_w = w;
  if (*mru_w && *accept_windows_inuse == has_windows_inuse &&
      this_mru_w->last_used > (*mru_w)->last_used)
   return;
 }




 *mru_w = this_mru_w;
 *lru_p = p;
 *accept_windows_inuse = has_windows_inuse;
}
