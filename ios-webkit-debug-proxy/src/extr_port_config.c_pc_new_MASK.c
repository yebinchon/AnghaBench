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
struct pc_struct {int dummy; } ;
typedef  scalar_t__ pc_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 

pc_t FUNC2() {
  pc_t self = FUNC0(sizeof(struct pc_struct));
  if (self) {
    FUNC1(self, 0, sizeof(struct pc_struct));
  }
  return self;
}