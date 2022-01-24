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
struct asymmetric_key_parser {int /*<<< orphan*/  name; int /*<<< orphan*/  link; } ;

/* Variables and functions */
 int /*<<< orphan*/  asymmetric_key_parsers_sem ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct asymmetric_key_parser *parser)
{
	FUNC0(&asymmetric_key_parsers_sem);
	FUNC1(&parser->link);
	FUNC3(&asymmetric_key_parsers_sem);

	FUNC2("Asymmetric key parser '%s' unregistered\n", parser->name);
}