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
struct TYPE_2__ {void* (* store_get_ptr ) (int) ;} ;

/* Variables and functions */
 TYPE_1__* TL_OUT_METHODS ; 
 int TL_OUT_POS ; 
 int TL_OUT_REMAINING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline void *FUNC3 (int size) {
  FUNC0 (FUNC2 (size) >= 0);
  if (!size) { return 0; }
  FUNC0 (size >= 0);
  void *x = TL_OUT_METHODS->store_get_ptr (size);
  TL_OUT_POS += size;
  TL_OUT_REMAINING -= size;
  return x;
}