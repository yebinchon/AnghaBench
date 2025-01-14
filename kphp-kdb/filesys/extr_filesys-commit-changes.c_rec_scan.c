
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int st_mode; } ;
struct TYPE_12__ {int filename; struct TYPE_12__* next; TYPE_6__ st; } ;
typedef TYPE_1__ file_t ;


 scalar_t__ S_ISDIR (int ) ;
 int S_ISLNK (int ) ;
 int add_file (int,TYPE_1__*,TYPE_1__*,int) ;
 int append_path (scalar_t__*,int,int) ;
 int change_attrs (int,TYPE_1__*,int) ;
 int faults ;
 int free_filelist (TYPE_1__*) ;
 int get_changed_attrs (TYPE_6__*,TYPE_6__*) ;
 int getdir (scalar_t__*,TYPE_1__**,int,int) ;
 int kprintf (char*,scalar_t__*,int,int) ;
 scalar_t__* new_dir ;
 scalar_t__* old_dir ;
 int old_dir_length ;
 int remove_file (int,TYPE_1__*) ;
 TYPE_1__* remove_file_from_list (TYPE_1__*,int *) ;
 int ** scan_ignore_list ;
 int strcmp (int,int) ;
 int vkprintf (int,char*,int,int,...) ;

__attribute__((used)) static void rec_scan (int l1, int l2, int *changed) {
  vkprintf (3, "rec_scan (old_dir = %s, new_dir = %s)\n", old_dir, new_dir);
  *changed = 0;
  int r;
  file_t *x, *y, *px, *py;
  int nx = getdir (old_dir, &px, 1, 1);
  int ny = getdir (new_dir, &py, 1, 1);
  vkprintf (3, "l1 = %d, l2 = %d, nx = %d, ny = %d, px = %p, py = %p\n", l1, l2, nx, ny, px, py);

  if (l1 == old_dir_length) {
    for (r = 0; scan_ignore_list[r] != ((void*)0); r++) {
      px = remove_file_from_list (px, scan_ignore_list[r]);
      py = remove_file_from_list (py, scan_ignore_list[r]);
    }
  }

  x = px;
  y = py;
  while (x != ((void*)0) && y != ((void*)0)) {
    vkprintf (4, "x->filename = %s, y->filename = %s\n", x->filename, y->filename);
    int c = strcmp (x->filename, y->filename);
    if (c < 0) {
      *changed = 1;
      remove_file (l1, x);
      x = x->next;
    } else if (c > 0) {
      *changed = 1;
      add_file (l2, y, ((void*)0), 0);
      y = y->next;
    } else {
      int dx = S_ISDIR (x->st.st_mode) && !S_ISLNK (x->st.st_mode);
      int dy = S_ISDIR (y->st.st_mode) && !S_ISLNK (y->st.st_mode);
      if (dx) {
        if (dy) {
          int changed;
          rec_scan (append_path (old_dir, l1, x->filename), append_path (new_dir, l2, y->filename), &changed);
          int attrib_mask = get_changed_attrs (&x->st, &y->st);
          if ((attrib_mask & ~8) || changed) {
            r = change_attrs (l2, y, attrib_mask);
            if (r < 0) {
              kprintf ("change_attrs (%s/%s) returns error code %d.\n", new_dir, y->filename, r);
              faults++;
            }
          }
        } else {
          *changed = 1;
          remove_file (l1, x);
          add_file (l2, y, ((void*)0), 0);
        }
      } else {
        if (dy) {
          *changed = 1;
          remove_file (l1, x);
          add_file (l2, y, ((void*)0), 0);
        } else {
          int attrib_mask = get_changed_attrs (&x->st, &y->st);
          if (attrib_mask) {
            *changed = 1;
            add_file (l2, y, x, attrib_mask);
          }
        }
      }
      x = x->next;
      y = y->next;
    }
  }

  if (x != ((void*)0) || y != ((void*)0)) {
    *changed = 1;
  }

  while (x != ((void*)0)) {
    remove_file (l1, x);
    x = x->next;
  }
  while (y != ((void*)0)) {
    add_file (l2, y, ((void*)0), 0);
    y = y->next;
  }

  old_dir[l1] = 0;
  new_dir[l2] = 0;
  free_filelist (px);
  free_filelist (py);
  vkprintf (3, "rec_scan (%d, %d) succesfully ended.\n", l1, l2);
}
