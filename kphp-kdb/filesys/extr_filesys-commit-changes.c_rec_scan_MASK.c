#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  st_mode; } ;
struct TYPE_12__ {int filename; struct TYPE_12__* next; TYPE_6__ st; } ;
typedef  TYPE_1__ file_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_1__*,TYPE_1__*,int) ; 
 int FUNC3 (scalar_t__*,int,int) ; 
 int FUNC4 (int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  faults ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_6__*,TYPE_6__*) ; 
 int FUNC7 (scalar_t__*,TYPE_1__**,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__*,int,int) ; 
 scalar_t__* new_dir ; 
 scalar_t__* old_dir ; 
 int old_dir_length ; 
 int /*<<< orphan*/  FUNC9 (int,TYPE_1__*) ; 
 TYPE_1__* FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** scan_ignore_list ; 
 int FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,int,int,...) ; 

__attribute__((used)) static void FUNC13 (int l1, int l2, int *changed) {
  FUNC12 (3, "rec_scan (old_dir = %s, new_dir = %s)\n", old_dir, new_dir);
  *changed = 0;
  int r;
  file_t *x, *y, *px, *py;
  int nx = FUNC7 (old_dir, &px, 1, 1);
  int ny = FUNC7 (new_dir, &py, 1, 1);
  FUNC12 (3, "l1 = %d, l2 = %d, nx = %d, ny = %d, px = %p, py = %p\n", l1, l2, nx, ny, px, py);

  if (l1 == old_dir_length) {
    for (r = 0; scan_ignore_list[r] != NULL; r++) {
      px = FUNC10 (px, scan_ignore_list[r]);
      py = FUNC10 (py, scan_ignore_list[r]);
    }
  }

  x = px;
  y = py;
  while (x != NULL && y != NULL) {
    FUNC12 (4, "x->filename = %s, y->filename = %s\n", x->filename, y->filename);
    int c = FUNC11 (x->filename, y->filename);
    if (c < 0) {
      *changed = 1;
      FUNC9 (l1, x);
      x = x->next;
    } else if (c > 0) {
      *changed = 1;
      FUNC2 (l2, y, NULL, 0);
      y = y->next;
    } else {
      int dx = FUNC0 (x->st.st_mode) && !FUNC1 (x->st.st_mode);
      int dy = FUNC0 (y->st.st_mode) && !FUNC1 (y->st.st_mode);
      if (dx) {
        if (dy) {
          int changed;
          FUNC13 (FUNC3 (old_dir, l1, x->filename), FUNC3 (new_dir, l2, y->filename), &changed);
          int attrib_mask = FUNC6 (&x->st, &y->st);
          if ((attrib_mask & ~8) || changed) {
            r = FUNC4 (l2, y, attrib_mask);
            if (r < 0) {
              FUNC8 ("change_attrs (%s/%s) returns error code %d.\n", new_dir, y->filename, r);
              faults++;
            }
          }
        } else {
          *changed = 1;
          FUNC9 (l1, x);
          FUNC2 (l2, y, NULL, 0);
        }
      } else {
        if (dy) {
          *changed = 1;
          FUNC9 (l1, x);
          FUNC2 (l2, y, NULL, 0);
        } else {
          int attrib_mask = FUNC6 (&x->st, &y->st);
          if (attrib_mask) {
            *changed = 1;
            FUNC2 (l2, y, x, attrib_mask);
          }
        }
      }
      x = x->next;
      y = y->next;
    }
  }

  if (x != NULL || y != NULL) {
    *changed = 1;
  }

  while (x != NULL) {
    FUNC9 (l1, x);
    x = x->next;
  }
  while (y != NULL) {
    FUNC2 (l2, y, NULL, 0);
    y = y->next;
  }

  old_dir[l1] = 0;
  new_dir[l2] = 0;
  FUNC5 (px);
  FUNC5 (py);
  FUNC12 (3, "rec_scan (%d, %d) succesfully ended.\n", l1, l2);
}