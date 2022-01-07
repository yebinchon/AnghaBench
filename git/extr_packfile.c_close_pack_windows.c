
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_git {struct pack_window* windows; int pack_name; } ;
struct pack_window {struct pack_window* next; scalar_t__ len; int base; scalar_t__ inuse_cnt; } ;


 int die (char*,int ) ;
 int free (struct pack_window*) ;
 int munmap (int ,scalar_t__) ;
 int pack_mapped ;
 int pack_open_windows ;

void close_pack_windows(struct packed_git *p)
{
 while (p->windows) {
  struct pack_window *w = p->windows;

  if (w->inuse_cnt)
   die("pack '%s' still has open windows to it",
       p->pack_name);
  munmap(w->base, w->len);
  pack_mapped -= w->len;
  pack_open_windows--;
  p->windows = w->next;
  free(w);
 }
}
