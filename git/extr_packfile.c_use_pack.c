
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct packed_git {scalar_t__ pack_size; int pack_fd; struct pack_window* windows; int do_not_close; int pack_name; } ;
struct pack_window {scalar_t__ offset; size_t len; scalar_t__ base; int inuse_cnt; scalar_t__ last_used; struct pack_window* next; } ;
typedef scalar_t__ off_t ;
struct TYPE_2__ {scalar_t__ rawsz; } ;


 scalar_t__ MAP_FAILED ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 int _ (char*) ;
 int close_pack_fd (struct packed_git*) ;
 int die (char*,...) ;
 int die_errno (char*,int ) ;
 scalar_t__ in_window (struct pack_window*,scalar_t__) ;
 scalar_t__ open_packed_git (struct packed_git*) ;
 scalar_t__ pack_mapped ;
 int pack_mmap_calls ;
 scalar_t__ pack_open_windows ;
 int pack_used_ctr ;
 scalar_t__ packed_git_limit ;
 int packed_git_window_size ;
 scalar_t__ peak_pack_mapped ;
 scalar_t__ peak_pack_open_windows ;
 TYPE_1__* the_hash_algo ;
 scalar_t__ unuse_one_window (struct packed_git*) ;
 struct pack_window* xcalloc (int,int) ;
 scalar_t__ xmmap_gently (int *,size_t,int ,int ,int,scalar_t__) ;
 unsigned long xsize_t (scalar_t__) ;

unsigned char *use_pack(struct packed_git *p,
  struct pack_window **w_cursor,
  off_t offset,
  unsigned long *left)
{
 struct pack_window *win = *w_cursor;






 if (!p->pack_size && p->pack_fd == -1 && open_packed_git(p))
  die("packfile %s cannot be accessed", p->pack_name);
 if (offset > (p->pack_size - the_hash_algo->rawsz))
  die("offset beyond end of packfile (truncated pack?)");
 if (offset < 0)
  die(_("offset before end of packfile (broken .idx?)"));

 if (!win || !in_window(win, offset)) {
  if (win)
   win->inuse_cnt--;
  for (win = p->windows; win; win = win->next) {
   if (in_window(win, offset))
    break;
  }
  if (!win) {
   size_t window_align = packed_git_window_size / 2;
   off_t len;

   if (p->pack_fd == -1 && open_packed_git(p))
    die("packfile %s cannot be accessed", p->pack_name);

   win = xcalloc(1, sizeof(*win));
   win->offset = (offset / window_align) * window_align;
   len = p->pack_size - win->offset;
   if (len > packed_git_window_size)
    len = packed_git_window_size;
   win->len = (size_t)len;
   pack_mapped += win->len;
   while (packed_git_limit < pack_mapped
    && unuse_one_window(p))
    ;
   win->base = xmmap_gently(((void*)0), win->len,
    PROT_READ, MAP_PRIVATE,
    p->pack_fd, win->offset);
   if (win->base == MAP_FAILED)
    die_errno("packfile %s cannot be mapped",
       p->pack_name);
   if (!win->offset && win->len == p->pack_size
    && !p->do_not_close)
    close_pack_fd(p);
   pack_mmap_calls++;
   pack_open_windows++;
   if (pack_mapped > peak_pack_mapped)
    peak_pack_mapped = pack_mapped;
   if (pack_open_windows > peak_pack_open_windows)
    peak_pack_open_windows = pack_open_windows;
   win->next = p->windows;
   p->windows = win;
  }
 }
 if (win != *w_cursor) {
  win->last_used = pack_used_ctr++;
  win->inuse_cnt++;
  *w_cursor = win;
 }
 offset -= win->offset;
 if (left)
  *left = win->len - xsize_t(offset);
 return win->base + offset;
}
