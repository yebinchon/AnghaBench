#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int left; int ptr; } ;
typedef  TYPE_1__ dl_zout ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int,int,size_t) ; 

int FUNC3 (dl_zout *f, const void *src, int len) {
  int adj_bytes = -len & 3;

  while (len) {
    int cur = len;
    if (f->left < len) {
      cur = f->left;
    }
    FUNC1 (f->ptr, src, (size_t)cur);
    f->ptr += cur;
    f->left -= cur;

    if ((len -= cur)) {
      FUNC0 (f);
      src += cur;
    }
  }

  if (f->left < adj_bytes) {
    FUNC0 (f);
  }
  FUNC2 (f->ptr, adj_bytes, (size_t)adj_bytes);
  f->ptr += adj_bytes;
  f->left -= adj_bytes;

  return len;
}