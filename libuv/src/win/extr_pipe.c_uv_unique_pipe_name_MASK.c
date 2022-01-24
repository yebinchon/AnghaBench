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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(char* ptr, char* name, size_t size) {
  FUNC1(name, size, "\\\\?\\pipe\\uv\\%p-%lu", ptr, FUNC0());
}