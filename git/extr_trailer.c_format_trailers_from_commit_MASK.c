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
struct trailer_info {int dummy; } ;
struct strbuf {int dummy; } ;
struct process_trailer_options {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*,struct trailer_info*,struct process_trailer_options const*) ; 
 int /*<<< orphan*/  FUNC1 (struct trailer_info*,char const*,struct process_trailer_options const*) ; 
 int /*<<< orphan*/  FUNC2 (struct trailer_info*) ; 

void FUNC3(struct strbuf *out, const char *msg,
				 const struct process_trailer_options *opts)
{
	struct trailer_info info;

	FUNC1(&info, msg, opts);
	FUNC0(out, &info, opts);
	FUNC2(&info);
}