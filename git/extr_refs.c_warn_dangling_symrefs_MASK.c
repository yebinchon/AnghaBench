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
struct warn_if_dangling_data {char const* msg_fmt; struct string_list const* refnames; int /*<<< orphan*/ * refname; int /*<<< orphan*/ * fp; } ;
struct string_list {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct warn_if_dangling_data*) ; 
 int /*<<< orphan*/  warn_if_dangling_symref ; 

void FUNC1(FILE *fp, const char *msg_fmt, const struct string_list *refnames)
{
	struct warn_if_dangling_data data;

	data.fp = fp;
	data.refname = NULL;
	data.refnames = refnames;
	data.msg_fmt = msg_fmt;
	FUNC0(warn_if_dangling_symref, &data);
}