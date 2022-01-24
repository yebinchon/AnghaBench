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
struct json_writer {int /*<<< orphan*/  json; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct json_writer*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

void FUNC2(struct json_writer *jw, const char *key)
{
	FUNC0(jw, key);
	FUNC1(&jw->json, "null");
}