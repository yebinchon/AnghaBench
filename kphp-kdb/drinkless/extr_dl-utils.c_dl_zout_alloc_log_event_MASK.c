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
struct TYPE_4__ {int left; void* ptr; } ;
typedef  TYPE_1__ dl_zout ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int,size_t) ; 

void *FUNC3 (dl_zout *f, int type, int bytes) {
  int adj_bytes = -bytes & 3;
  bytes = (bytes + 3) & -4;

  if (bytes > f->left) {
    FUNC1 (f);
  }

  FUNC0 (bytes >= 4 && bytes <= f->left);

  void *EV = f->ptr;

  f->ptr += bytes;
  f->left -= bytes;

  *(unsigned int *)EV = (unsigned int)type;

  if (adj_bytes) {
    FUNC2 (f->ptr - adj_bytes, adj_bytes, (size_t)adj_bytes);
  }

  return EV;
}