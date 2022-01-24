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
struct json_writer {int /*<<< orphan*/  json; scalar_t__ pretty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct json_writer*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct json_writer*) ; 
 int /*<<< orphan*/  FUNC3 (struct json_writer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char) ; 

__attribute__((used)) static void FUNC5(struct json_writer *jw, const char *key)
{
	FUNC1(jw, key);
	FUNC3(jw);

	if (jw->pretty) {
		FUNC4(&jw->json, '\n');
		FUNC2(jw);
	}

	FUNC0(&jw->json, key);
	FUNC4(&jw->json, ':');
	if (jw->pretty)
		FUNC4(&jw->json, ' ');
}