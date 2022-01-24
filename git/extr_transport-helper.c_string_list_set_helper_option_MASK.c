#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct string_list {int nr; TYPE_1__* items; } ;
struct strbuf {int dummy; } ;
struct helper_data {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  string; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct strbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int FUNC5 (struct helper_data*,struct strbuf*) ; 

__attribute__((used)) static int FUNC6(struct helper_data *data,
					 const char *name,
					 struct string_list *list)
{
	struct strbuf buf = STRBUF_INIT;
	int i, ret = 0;

	for (i = 0; i < list->nr; i++) {
		FUNC2(&buf, "option %s ", name);
		FUNC0(list->items[i].string, &buf, NULL, 0);
		FUNC1(&buf, '\n');

		if ((ret = FUNC5(data, &buf)))
			break;
		FUNC4(&buf);
	}
	FUNC3(&buf);
	return ret;
}