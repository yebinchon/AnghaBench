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
struct TYPE_2__ {int /*<<< orphan*/  (* fetch_move ) (int) ;} ;

/* Variables and functions */
 TYPE_1__* TL_IN_METHODS ; 
 int TL_IN_POS ; 
 int TL_IN_REMAINING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static inline int FUNC2 (int offset) {
  if (FUNC1 (offset) < 0) {
    return -1;
  }
  TL_IN_METHODS->fetch_move (offset);
  TL_IN_POS += offset;
  TL_IN_REMAINING -= offset;
  return offset;
}