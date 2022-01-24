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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,char*,int) ; 

__attribute__((used)) static void FUNC3(int f) {
  FUNC0(6 == FUNC2(f, "begin\n", 6));
  FUNC0(65542 == FUNC1(f, 65536, SEEK_CUR));
  FUNC0(4 == FUNC2(f, "end\n", 4));
}