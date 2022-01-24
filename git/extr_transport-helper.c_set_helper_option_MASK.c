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
struct transport {struct helper_data* data; } ;
struct string_list {int dummy; } ;
struct strbuf {int dummy; } ;
struct helper_data {int /*<<< orphan*/  option; } ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 struct strbuf STRBUF_INIT ; 
 char** boolean_options ; 
 int /*<<< orphan*/  FUNC1 (struct transport*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,struct strbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int FUNC7 (struct helper_data*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 int FUNC9 (struct helper_data*,char const*,struct string_list*) ; 
 char** unsupported_options ; 

__attribute__((used)) static int FUNC10(struct transport *transport,
			  const char *name, const char *value)
{
	struct helper_data *data = transport->data;
	struct strbuf buf = STRBUF_INIT;
	int i, ret, is_bool = 0;

	FUNC1(transport);

	if (!data->option)
		return 1;

	if (!FUNC8(name, "deepen-not"))
		return FUNC9(data, name,
						     (struct string_list *)value);

	for (i = 0; i < FUNC0(unsupported_options); i++) {
		if (!FUNC8(name, unsupported_options[i]))
			return 1;
	}

	for (i = 0; i < FUNC0(boolean_options); i++) {
		if (!FUNC8(name, boolean_options[i])) {
			is_bool = 1;
			break;
		}
	}

	FUNC4(&buf, "option %s ", name);
	if (is_bool)
		FUNC5(&buf, value ? "true" : "false");
	else
		FUNC2(value, &buf, NULL, 0);
	FUNC3(&buf, '\n');

	ret = FUNC7(data, &buf);
	FUNC6(&buf);
	return ret;
}