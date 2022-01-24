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
struct connection {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* sql_ready_to_write ) (struct connection*) ;} ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (struct connection*) ; 

__attribute__((used)) static int FUNC2 (struct connection *c) {
  if (FUNC0(c)->sql_ready_to_write) {
    FUNC0(c)->sql_ready_to_write (c);
  }
  return 0;
}