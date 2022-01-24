#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mcs_data {scalar_t__ query_type; } ;
struct connection {int /*<<< orphan*/  Out; } ;

/* Variables and functions */
 struct mcs_data* FUNC0 (struct connection*) ; 
 scalar_t__ mct_get ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC2 (struct connection *c) {
  struct mcs_data *D = FUNC0(c);
  if (D->query_type == mct_get) {
    FUNC1 (&c->Out, "END\r\n", 5);
  }
  return 0;
}