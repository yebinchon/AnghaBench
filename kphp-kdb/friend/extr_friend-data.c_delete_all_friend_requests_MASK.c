#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ req_cnt; scalar_t__ req_time_tree; scalar_t__ req_tree; } ;
typedef  TYPE_1__ user_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

__attribute__((used)) static int FUNC1 (user_t *U) {
  if (!U) {
    return -1;
  }
  FUNC0 (U->req_tree);
  FUNC0 (U->req_time_tree);
  U->req_tree = 0;
  U->req_time_tree = 0;
  U->req_cnt = 0;
  return 1;
}