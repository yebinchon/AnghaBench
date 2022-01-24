#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int /*<<< orphan*/  buf; } ;
struct TYPE_2__ {char const* pack_name; int /*<<< orphan*/  hash; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* pack_data ; 
 char* FUNC7 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC10(const char *curr_index_name)
{
	static const char *keep_msg = "fast-import";
	struct strbuf name = STRBUF_INIT;
	int keep_fd;

	FUNC6(&name, pack_data->hash, "keep");
	keep_fd = FUNC5(name.buf);
	if (keep_fd < 0)
		FUNC2("cannot create keep file");
	FUNC9(keep_fd, keep_msg, FUNC8(keep_msg));
	if (FUNC0(keep_fd))
		FUNC2("failed to write keep file");

	FUNC6(&name, pack_data->hash, "pack");
	if (FUNC3(pack_data->pack_name, name.buf))
		FUNC1("cannot store pack file");

	FUNC6(&name, pack_data->hash, "idx");
	if (FUNC3(curr_index_name, name.buf))
		FUNC1("cannot store index file");
	FUNC4((void *)curr_index_name);
	return FUNC7(&name, NULL);
}