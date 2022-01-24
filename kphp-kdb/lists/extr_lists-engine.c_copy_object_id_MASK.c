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
typedef  int /*<<< orphan*/  var_object_id_t ;
typedef  int /*<<< orphan*/  object_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int object_id_ints ; 

void FUNC2 (var_object_id_t *dst, object_id_t src) {
  FUNC0 (dst);
#ifdef LISTS_Z
  memcpy (*dst, src, 4 * object_id_ints);
#else
  *dst = src;
#endif
}