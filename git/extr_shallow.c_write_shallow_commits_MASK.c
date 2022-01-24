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
struct strbuf {int dummy; } ;
struct oid_array {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct strbuf*,int,struct oid_array const*,int /*<<< orphan*/ ) ; 

int FUNC1(struct strbuf *out, int use_pack_protocol,
			  const struct oid_array *extra)
{
	return FUNC0(out, use_pack_protocol, extra, 0);
}