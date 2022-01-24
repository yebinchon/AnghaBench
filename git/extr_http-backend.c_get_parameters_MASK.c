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
struct string_list_item {char* util; } ;
struct string_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 struct string_list* query_params ; 
 struct string_list_item* FUNC2 (struct string_list*,char*) ; 
 struct string_list_item* FUNC3 (struct string_list*,char*) ; 
 char* FUNC4 (char const**) ; 
 char* FUNC5 (char const**) ; 
 struct string_list* FUNC6 (int,int) ; 

__attribute__((used)) static struct string_list *FUNC7(void)
{
	if (!query_params) {
		const char *query = FUNC1("QUERY_STRING");

		query_params = FUNC6(1, sizeof(*query_params));
		while (query && *query) {
			char *name = FUNC4(&query);
			char *value = FUNC5(&query);
			struct string_list_item *i;

			i = FUNC3(query_params, name);
			if (!i)
				i = FUNC2(query_params, name);
			else
				FUNC0(i->util);
			i->util = value;
		}
	}
	return query_params;
}