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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct list_objects_filter_options {size_t sub_nr; int /*<<< orphan*/ * sub; int /*<<< orphan*/  sub_alloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,struct strbuf*) ; 
 scalar_t__ FUNC3 (struct strbuf*,struct strbuf*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(
	struct list_objects_filter_options *filter_options,
	struct strbuf *subspec,
	struct strbuf *errbuf)
{
	size_t new_index = filter_options->sub_nr;
	char *decoded;
	int result;

	FUNC0(filter_options->sub, filter_options->sub_nr, 1,
		      filter_options->sub_alloc);

	decoded = FUNC4(subspec->buf);

	result = FUNC3(subspec, errbuf) ||
		FUNC2(
			&filter_options->sub[new_index], decoded, errbuf);

	FUNC1(decoded);
	return result;
}