#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct value_buffer {char* size_ptr; int w; scalar_t__ n474; scalar_t__ s; scalar_t__ wptr; TYPE_1__* c; } ;
struct TYPE_2__ {int /*<<< orphan*/  Out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,int) ; 
 size_t FUNC2 (char*,char*,int) ; 

int FUNC3 (struct value_buffer *B) {
  B->size_ptr[FUNC2 (B->size_ptr, "% 9d", B->w)] = '\r';
  FUNC1 (B->wptr, "\r\n", 2);
  B->wptr += 2;
  FUNC0 (&B->c->Out, B->wptr - (B->s - B->n474));
  return 0;
}