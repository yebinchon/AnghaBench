#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int y; } ;
typedef  TYPE_1__ tree_ext_small_t ;
typedef  int object_id_t ;
struct TYPE_6__ {int z; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_1__*) ; 
 int Y_MULT_INV ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int FUNC2 (tree_ext_small_t *T) {
  #ifdef LISTS_GT
  object_id_t object_id = GLOBAL_NODE(T)->z;
  #else
  object_id_t object_id = T->y * Y_MULT_INV;
  #endif
  return FUNC1 (object_id);
}