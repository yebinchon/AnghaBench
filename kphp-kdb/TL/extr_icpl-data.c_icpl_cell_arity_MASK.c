#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_3__* left; } ;
struct TYPE_6__ {TYPE_1__ p; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__ u; } ;
typedef  TYPE_3__ icpl_cell_t ;

/* Variables and functions */
 scalar_t__ ct_node ; 

__attribute__((used)) static int FUNC0 (icpl_cell_t *R) {
  if (R->type != ct_node) {
    return 0;
  }
  return 1 + FUNC0 (R->u.p.left);
}