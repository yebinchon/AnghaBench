#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  (* store_clear ) () ;} ;

/* Variables and functions */
 scalar_t__ TL_OUT ; 
 TYPE_1__* TL_OUT_METHODS ; 
 int /*<<< orphan*/  TL_OUT_TYPE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  tl_type_none ; 

__attribute__((used)) static inline int FUNC2 (void) {
  FUNC0 (TL_OUT);
  TL_OUT_METHODS->store_clear ();
  TL_OUT = 0;
  TL_OUT_TYPE = tl_type_none;
  return 0; 
}