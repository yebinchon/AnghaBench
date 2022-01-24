#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_3__ {scalar_t__ left; int r_left; size_t id; int /*<<< orphan*/  buf; int /*<<< orphan*/  ptr; scalar_t__ buf_len; } ;
typedef  TYPE_1__ dl_zin ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * fd ; 
 int* fpos ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static inline int FUNC4 (dl_zin *f) {
  FUNC0 (f->left == 0);
  if (FUNC1(f->r_left)) {
    int cur = (int) FUNC2 ((off_t)f->buf_len, f->r_left);
    FUNC0 (FUNC3 (fd[f->id], f->buf, (size_t)cur) == cur);
    fpos[f->id] += cur;
    f->r_left -= cur;
    f->left = cur;
    f->ptr = f->buf;
    return cur;
  } else {
    return 0;
  }
}