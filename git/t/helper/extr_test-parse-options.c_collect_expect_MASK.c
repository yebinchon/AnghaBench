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
struct string_list_item {void* util; } ;
struct string_list {int dummy; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;
struct option {scalar_t__ value; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char const*,char) ; 
 struct string_list_item* FUNC4 (struct string_list*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const struct option *opt, const char *arg, int unset)
{
	struct string_list *expect;
	struct string_list_item *item;
	struct strbuf label = STRBUF_INIT;
	const char *colon;

	if (!arg || unset)
		FUNC0("malformed --expect option");

	expect = (struct string_list *)opt->value;
	colon = FUNC3(arg, ':');
	if (!colon)
		FUNC0("malformed --expect option, lacking a colon");
	FUNC1(&label, arg, colon - arg);
	item = FUNC4(expect, FUNC2(&label, NULL));
	if (item->util)
		FUNC0("malformed --expect option, duplicate %s", label.buf);
	item->util = (void *)arg;
	return 0;
}