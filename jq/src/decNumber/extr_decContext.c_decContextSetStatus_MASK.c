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
typedef  int uInt ;
struct TYPE_4__ {int status; int traps; } ;
typedef  TYPE_1__ decContext ;

/* Variables and functions */
 int /*<<< orphan*/  SIGFPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

decContext * FUNC1(decContext *context, uInt status) {
  context->status|=status;
  if (status & context->traps) FUNC0(SIGFPE);
  return context;}