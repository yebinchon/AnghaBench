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
typedef  int /*<<< orphan*/  each_loose_subdir_fn ;
typedef  int /*<<< orphan*/  each_loose_object_fn ;
typedef  int /*<<< orphan*/  each_loose_cruft_fn ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int FUNC0 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 

int FUNC3(const char *path,
				  each_loose_object_fn obj_cb,
				  each_loose_cruft_fn cruft_cb,
				  each_loose_subdir_fn subdir_cb,
				  void *data)
{
	struct strbuf buf = STRBUF_INIT;
	int r;

	FUNC1(&buf, path);
	r = FUNC0(&buf, obj_cb, cruft_cb,
					      subdir_cb, data);
	FUNC2(&buf);

	return r;
}