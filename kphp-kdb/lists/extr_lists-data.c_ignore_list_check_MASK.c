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
typedef  int /*<<< orphan*/  var_ltree_x_t ;
typedef  int /*<<< orphan*/  object_id_t ;
typedef  int /*<<< orphan*/  list_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ ignore_timestamp ; 
 int /*<<< orphan*/  ignore_tree ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ now ; 

int FUNC2 (list_id_t list_id, object_id_t object_id) {
  if (now < ignore_timestamp) { return 0; }
  static var_ltree_x_t lkey;
  FUNC0 (list_id, object_id, &lkey);
  return FUNC1 (ignore_tree, lkey) != 0;
}