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
struct value_data {int fields_mask; scalar_t__ zero_mask; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 struct value_data* FUNC1 (int) ; 

struct value_data *FUNC2 (int fields_mask) {
  struct value_data *V = FUNC1 (4 + 4 * FUNC0 (fields_mask));
  V->fields_mask = fields_mask;
  V->zero_mask = 0;
  return V;
}