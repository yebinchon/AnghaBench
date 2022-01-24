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
struct strbuf {scalar_t__ len; scalar_t__ buf; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 scalar_t__ GIT_MAX_HEXSZ ; 
 int FUNC0 (scalar_t__,struct object_id const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,scalar_t__) ; 

void FUNC3(struct strbuf *sb, const struct object_id *oid,
			      int abbrev_len)
{
	int r;
	FUNC1(sb, GIT_MAX_HEXSZ + 1);
	r = FUNC0(sb->buf + sb->len, oid, abbrev_len);
	FUNC2(sb, sb->len + r);
}