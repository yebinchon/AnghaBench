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
struct write_shallow_data {int use_pack_protocol; int count; unsigned int flags; struct strbuf* out; } ;
struct strbuf {int dummy; } ;
struct oid_array {int nr; scalar_t__ oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct write_shallow_data*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_one_shallow ; 

__attribute__((used)) static int FUNC4(struct strbuf *out, int use_pack_protocol,
				   const struct oid_array *extra,
				   unsigned flags)
{
	struct write_shallow_data data;
	int i;
	data.out = out;
	data.use_pack_protocol = use_pack_protocol;
	data.count = 0;
	data.flags = flags;
	FUNC0(write_one_shallow, &data);
	if (!extra)
		return data.count;
	for (i = 0; i < extra->nr; i++) {
		FUNC3(out, FUNC1(extra->oid + i));
		FUNC2(out, '\n');
		data.count++;
	}
	return data.count;
}