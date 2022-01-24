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
struct TYPE_5__ {scalar_t__ state; int wptr; int rptr; scalar_t__ pptr; int start; int end; scalar_t__ extra; int total_bytes; struct TYPE_5__* prev; struct TYPE_5__* next; } ;
typedef  TYPE_1__ netbuffer_t ;

/* Variables and functions */
 scalar_t__ NB_MAGIC_BUSYHEAD ; 
 scalar_t__ NB_MAGIC_HEAD ; 
 int NET_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int FUNC4 (TYPE_1__*,int,int) ; 

int FUNC5 (netbuffer_t *H, int sz) {
  int u, v, w;
  netbuffer_t *X, *Y;
  FUNC0 (H->state == NB_MAGIC_HEAD || H->state == NB_MAGIC_BUSYHEAD);
  FUNC0 (sz >= 0);
  u = H->wptr - H->rptr;
  if (H->pptr && H->pptr != H->wptr) {
    FUNC0 (H->rptr <= H->pptr && H->pptr < H->wptr);
    return H->pptr - H->rptr;
  }
  if (sz <= u || H->next == H) { return u; }
  if (sz > NET_BUFFER_SIZE) { sz = NET_BUFFER_SIZE; }
  X = H->next;
  v = (X->pptr ? X->pptr : X->wptr) - X->rptr;
  FUNC0 ((unsigned) v <= NET_BUFFER_SIZE);
  if (u + v >= sz || X->next == H) {
    if (!v) { return u; }
    if (u <= X->rptr - X->start) {
      X->rptr -= u;
      FUNC2 (X->rptr, H->rptr, u);
      H->rptr = H->wptr = H->start;
      if (H->pptr) {
        H->pptr = H->start;
      }
      return u + v;
    }
    if (v > sz - u) { v = sz - u; }
    w = H->end - H->wptr;
    if (v > w) {
      FUNC3 (H->start, H->rptr, u);
      H->rptr = H->start;
      H->wptr = H->start + u;
      w = H->end - H->wptr;
    }
    if (v > w) { v = w; }
    FUNC2 (H->wptr, X->rptr, v);
    X->rptr += v;
    H->wptr += v;
    if (H->pptr) {
      H->pptr = H->wptr;
    }
    if (X->rptr == X->wptr) {
      Y = X->next;
      FUNC0 (H->extra > 0);
      H->next = Y;
      Y->prev = H;
      FUNC1 (X);
      H->extra--;
    }
    return u + v;
  }
  // this case is quite rare
  if (u > 0) {
    FUNC3 (H->start, H->rptr, u);
  }
  H->rptr = H->wptr = H->start;
  if (H->pptr) {
    H->pptr = H->wptr;
  }
  if (sz > H->end - H->start) {
    sz = H->end - H->start;
  }
  w = FUNC4 (H, H->wptr + u, sz - u);
  v = u + w;
  H->total_bytes += w;
  H->wptr += v;
  if (H->pptr) {
    H->pptr = H->wptr;
  }
  return v;
}