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
struct TYPE_3__ {scalar_t__ state; int pptr; int wptr; int rptr; int total_bytes; struct TYPE_3__* next; } ;
typedef  TYPE_1__ netbuffer_t ;

/* Variables and functions */
 scalar_t__ NB_MAGIC_BUSYHEAD ; 
 scalar_t__ NB_MAGIC_HEAD ; 
 int NET_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

int FUNC1 (netbuffer_t *H) {
  netbuffer_t *X;
  int u, v, t = 0;
  FUNC0 (H->state == NB_MAGIC_HEAD || H->state == NB_MAGIC_BUSYHEAD);
  u = (H->pptr ? H->pptr : H->wptr) - H->rptr;
  FUNC0 (u >= 0);
  X = H->next;
  while (X != H) {
    v = X->wptr - X->rptr;
    if (X->pptr && X->pptr < X->wptr) {
      v = X->pptr - X->rptr;
      t = 1;
    }
    FUNC0 (v >= 0 && v <= NET_BUFFER_SIZE);
    u += v;
    if (t) {
      break;
    }
    X = X->next;
  }
  FUNC0 (u == H->total_bytes);
  return u;
}