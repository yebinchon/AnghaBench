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
typedef  unsigned long long uint64_t ;
struct TYPE_3__ {scalar_t__ main_storage_size; } ;
typedef  TYPE_1__ SSTS0200 ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 

uint64_t FUNC1(void) {
  SSTS0200 rcvr;

  if (FUNC0(&rcvr))
    return 0;

  return (uint64_t)rcvr.main_storage_size * 1024ULL;
}