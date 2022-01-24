#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * query; } ;
typedef  TYPE_1__ watchcat ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  watchcats_cnt ; 
 int watchcats_memory ; 

inline watchcat *FUNC2() {
  int mem = FUNC1();
  watchcats_cnt++;
  watchcats_memory += mem;

  watchcat *res = FUNC0 (mem);
  res->query = NULL;
  return res;
}