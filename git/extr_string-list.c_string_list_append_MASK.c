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
struct string_list_item {int dummy; } ;
struct string_list {scalar_t__ strdup_strings; } ;

/* Variables and functions */
 struct string_list_item* FUNC0 (struct string_list*,char*) ; 
 char* FUNC1 (char const*) ; 

struct string_list_item *FUNC2(struct string_list *list,
					    const char *string)
{
	return FUNC0(
			list,
			list->strdup_strings ? FUNC1(string) : (char *)string);
}