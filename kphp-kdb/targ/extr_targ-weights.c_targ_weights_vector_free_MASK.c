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
typedef  int /*<<< orphan*/  targ_weights_vector_t ;

/* Variables and functions */
 int FUNC0 () ; 
 int tot_weights_vector_bytes ; 
 int /*<<< orphan*/  tot_weights_vectors ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

void FUNC2 (targ_weights_vector_t *V) {
  int sz = FUNC0 ();
  tot_weights_vectors--;
  tot_weights_vector_bytes -= sz;
  FUNC1 (V, sz);
}