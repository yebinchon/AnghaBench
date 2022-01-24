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
typedef  int /*<<< orphan*/  yoml_t ;
typedef  int /*<<< orphan*/  yaml_parser_t ;
typedef  int /*<<< orphan*/  yaml_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static yoml_t *FUNC5(const char *fn, const char *s)
{
    yaml_parser_t parser;
    yoml_t *doc;

    FUNC2(&parser);
    FUNC3(&parser, (yaml_char_t*)s, FUNC0(s));
    doc = FUNC4(&parser, NULL, NULL, fn);
    FUNC1(&parser);

    return doc;
}