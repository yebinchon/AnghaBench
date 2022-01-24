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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct ref_format {int dummy; } ;
struct ref_array_item {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ref_array_item*,struct ref_format const*,struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 

void FUNC5(struct ref_array_item *info,
			 const struct ref_format *format)
{
	struct strbuf final_buf = STRBUF_INIT;
	struct strbuf error_buf = STRBUF_INIT;

	if (FUNC1(info, format, &final_buf, &error_buf))
		FUNC0("%s", error_buf.buf);
	FUNC2(final_buf.buf, 1, final_buf.len, stdout);
	FUNC4(&error_buf);
	FUNC4(&final_buf);
	FUNC3('\n');
}