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
struct ps_prochandle {int dummy; } ;
struct TYPE_2__ {size_t capacity; size_t size; scalar_t__ env; } ;
typedef  TYPE_1__ envAccum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char const*,size_t) ; 
 size_t FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,int) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC4(void *accum, struct ps_prochandle *Phandle, uintptr_t addr, const char *str) {
   envAccum *accump = accum;
   (void) Phandle;
   (void) addr; 
   size_t thissz = FUNC1(str);
   if ((thissz + 2) > (accump->capacity - accump->size))
      accump->env = FUNC3(accump->env, accump->capacity *= 2);
   if ((thissz + 2) > (accump->capacity - accump->size))
      return 1;
   FUNC0( accump->env + accump->size, str, (accump->capacity - accump->size));
   FUNC2( accump->env + accump->size + thissz + 1, "\n", 1);
   accump->size = accump->size + thissz + 1;
   return 0; 
}