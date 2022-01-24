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
typedef  int /*<<< orphan*/  uiEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(uiEntry *e, void *data)
{
	char *text;

	text = FUNC1(e);
	FUNC0("%s entry changed: %s\n", (const char *) data, text);
	FUNC2(text);
}