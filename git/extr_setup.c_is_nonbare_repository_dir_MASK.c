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

/* Variables and functions */
 int READ_GITFILE_ERR_OPEN_FAILED ; 
 int READ_GITFILE_ERR_READ_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,size_t) ; 

int FUNC6(struct strbuf *path)
{
	int ret = 0;
	int gitfile_error;
	size_t orig_path_len = path->len;
	FUNC0(orig_path_len != 0);
	FUNC4(path, '/');
	FUNC3(path, ".git");
	if (FUNC2(path->buf, &gitfile_error) || FUNC1(path->buf))
		ret = 1;
	if (gitfile_error == READ_GITFILE_ERR_OPEN_FAILED ||
	    gitfile_error == READ_GITFILE_ERR_READ_FAILED)
		ret = 1;
	FUNC5(path, orig_path_len);
	return ret;
}