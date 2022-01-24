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
struct strbuf {size_t len; int /*<<< orphan*/  buf; } ;
struct object_directory {int /*<<< orphan*/  path; } ;
struct alternate_refs_data {int /*<<< orphan*/  data; int /*<<< orphan*/  fn; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*) ; 

__attribute__((used)) static int FUNC7(struct object_directory *e,
				  void *data)
{
	struct strbuf path = STRBUF_INIT;
	size_t base_len;
	struct alternate_refs_data *cb = data;

	if (!FUNC3(&path, e->path, 0))
		goto out;
	if (!FUNC6(&path, "/objects"))
		goto out;
	base_len = path.len;

	/* Is this a git repository with refs? */
	FUNC2(&path, "/refs");
	if (!FUNC0(path.buf))
		goto out;
	FUNC5(&path, base_len);

	FUNC1(path.buf, cb->fn, cb->data);

out:
	FUNC4(&path);
	return 0;
}