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
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 char* FUNC2 (int) ; 

char* FUNC3(const char* s1, const char* s2) {
   int l1 = FUNC0(s1);
   int l2 = FUNC0(s2);
   char* out = FUNC2(l1 + l2 + 1);
   FUNC1(out, s1, l1);
   FUNC1(out+l1, s2, l2+1);
   return out;
}