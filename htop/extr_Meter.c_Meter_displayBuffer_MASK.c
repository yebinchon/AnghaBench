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
typedef  int /*<<< orphan*/  RichString ;
typedef  int /*<<< orphan*/  Meter ;

/* Variables and functions */
 int /*<<< orphan*/ * CRT_colors ; 
 size_t* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static inline void FUNC4(Meter* this, char* buffer, RichString* out) {
   if (FUNC2(this)) {
      FUNC1(this, out);
   } else {
      FUNC3(out, CRT_colors[FUNC0(this)[0]], buffer);
   }
}