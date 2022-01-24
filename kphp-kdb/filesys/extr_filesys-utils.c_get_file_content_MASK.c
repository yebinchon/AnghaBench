#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int st_size; int /*<<< orphan*/  st_mode; } ;
struct TYPE_5__ {TYPE_1__ st; int /*<<< orphan*/  filename; } ;
typedef  TYPE_2__ file_t ;

/* Variables and functions */
 int PATH_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned char* FUNC2 (char*,int) ; 
 int FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC5 (int) ; 

int FUNC6 (char *dir, file_t *x, unsigned char **a, int *L) {
  *a = NULL;
  *L = 0;
  if (FUNC1 (x->st.st_mode)) {
    FUNC4 (3, "link: %s\n", x->filename);
    *a = FUNC5 (PATH_MAX);
    *L = FUNC3 (dir, (char *) *a, PATH_MAX);
    if (*L < 0 || *L >= PATH_MAX - 1) {
      return -1;
    }
    (*a)[*L] = 0;
    (*L)++;
    return 0;
  }
  if (FUNC0 (x->st.st_mode)) {
    FUNC4 (3, "dir: %s\n", x->filename);
    *L = 0;
    return 0;
  }
  FUNC4 (3, "file: %s\n", x->filename);
  *L = x->st.st_size;
  *a = FUNC2 (dir, *L);
  if (*a == NULL) {
    return -2;
  }
  return 0;
}