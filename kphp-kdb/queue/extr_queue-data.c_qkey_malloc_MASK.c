#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ name; } ;
typedef  TYPE_1__ qkey ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  keys_cnt ; 
 int /*<<< orphan*/  keys_memory ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* qks ; 

qkey *FUNC3 (void) {
  keys_cnt++;
  if (qks == NULL) {
    keys_memory -= FUNC0();
    qkey *res = FUNC1 (sizeof (qkey));
    keys_memory += FUNC0();

    return res;
  }
  qkey *res = qks;
  qks = (qkey *)qks->name;
  FUNC2 (res, 0, sizeof (qkey));

  return res;
}