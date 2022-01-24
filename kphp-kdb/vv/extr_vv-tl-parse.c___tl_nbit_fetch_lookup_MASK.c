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

/* Variables and functions */
 int /*<<< orphan*/  TL_IN_NBIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static inline void FUNC3 (void *buf, int len) {
  FUNC0 (FUNC2 (TL_IN_NBIT, buf, len) == len);
  FUNC0 (FUNC1 (TL_IN_NBIT, -len) == -len);
}