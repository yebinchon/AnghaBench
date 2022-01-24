#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int buf_len; int left; int ptr; } ;
typedef  TYPE_1__ dl_zout ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,void const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,void const*,size_t) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4 (dl_zout *f, const void *src, int len) {
  if (FUNC3 (len > f->buf_len)) {
    FUNC0 (f);
    return FUNC1 (f, src, len);
  }
  int save_len = len;
  while (len) {
    int cur = len;
    if (f->left < len) {
      cur = f->left;
    }
    FUNC2 (f->ptr, src, (size_t)cur);
    f->ptr += cur;
    f->left -= cur;

    if ((len -= cur)) {
      FUNC0 (f);
      src += cur;
    }
  }
  return save_len;
}