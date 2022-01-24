#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
struct TYPE_4__ {TYPE_1__* data; } ;
struct TYPE_3__ {int /*<<< orphan*/  drive_r; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * fd ; 
 TYPE_2__ header ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ ** letter_stat ; 
 scalar_t__ log_drive ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void const*,int) ; 

void FUNC3 (int priority, const void *letter_buf, int count) {
//  fprintf (stderr, "!!! %d %p %d\n", priority, letter_buf, count);
  FUNC0 (FUNC2 (fd[2 + priority], letter_buf, count) == (ssize_t)count);
  if (log_drive) {
    FUNC1 ("write %9d bytes  to  position %12lld in buffer %d\n", count, header.data[priority].drive_r, priority);
  }
  letter_stat[priority][4]++;
}