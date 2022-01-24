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
struct list_objects_filter_options {int /*<<< orphan*/  filter_spec; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  allow_unencoded ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(
	struct list_objects_filter_options *filter, const char *raw)
{
	struct strbuf buf = STRBUF_INIT;
	FUNC0(&buf, raw, allow_unencoded);
	FUNC3("Add to combine filter-spec: %s\n", buf.buf);
	FUNC2(&filter->filter_spec, FUNC1(&buf, NULL));
}