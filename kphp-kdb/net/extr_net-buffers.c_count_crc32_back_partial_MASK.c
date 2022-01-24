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
struct TYPE_3__ {int pptr; int unprocessed_bytes; int total_bytes; scalar_t__ wptr; scalar_t__ rptr; struct TYPE_3__* next; struct TYPE_3__* prev; } ;
typedef  TYPE_1__ netbuffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  stderr ; 

unsigned FUNC3 (netbuffer_t *H, int len, unsigned complement_crc32) {
  netbuffer_t *X = H->prev;
  int total_bytes = X->pptr ? H->unprocessed_bytes : H->total_bytes;
  if (len > total_bytes) {
    FUNC2 (stderr, "**ERROR** len=%d total_bytes=%d\n", len, total_bytes);
  }
  FUNC0 (len <= total_bytes);

  if (X->wptr == X->rptr && X != H) {
    X = X->prev;
  }

  while (len > 0) {
    int s = X->wptr - (X->pptr ? X->pptr : X->rptr);
    len -= s;
    if (len > 0) {
      X = X->prev;
    }
  }
  complement_crc32 = FUNC1 ((X->pptr ? X->pptr : X->rptr) - len, X->wptr - (X->pptr ? X->pptr : X->rptr) + len, complement_crc32);
  X = X->next;
  while (X != H) {
    complement_crc32 = FUNC1 ((X->pptr ? X->pptr : X->rptr), X->wptr - (X->pptr ? X->pptr : X->rptr), complement_crc32);
    X = X->next;
  }
  return complement_crc32;  
}