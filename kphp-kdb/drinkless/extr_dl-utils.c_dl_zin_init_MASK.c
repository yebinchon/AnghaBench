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
typedef  scalar_t__ off_t ;
struct TYPE_3__ {int buf_len; int id; scalar_t__ r_left; scalar_t__ left; int /*<<< orphan*/  buf; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ dl_zin ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/ * fd ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC3 (dl_zin *f, int id, int len) {
  f->buf_len = len;
  f->id = id;

  FUNC0 ("Too small buffer for input" && f->buf_len > 8);
  f->ptr = f->buf = FUNC1 ((size_t)f->buf_len);
  f->left = 0;

  off_t cur = FUNC2 (fd[f->id], 0, SEEK_CUR),
        end = FUNC2 (fd[f->id], 0, SEEK_END);
  FUNC2 (fd[f->id], cur, SEEK_SET);
  f->r_left = end - cur;
}