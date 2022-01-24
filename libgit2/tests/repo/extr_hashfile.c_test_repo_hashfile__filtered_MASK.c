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
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 

void FUNC10(void)
{
	git_oid a, b;

	FUNC6(_repo, "core.autocrlf", true);

	FUNC2("status/.gitattributes", "*.txt text\n*.bin binary\n\n");

	/* create some sample content with CRLF in it */
	FUNC4("status/testfile.txt", "content\r\n");
	FUNC4("status/testfile.bin", "other\r\nstuff\r\n");

	/* not equal hashes because of filtering */
	FUNC5(FUNC7(&a, "status/testfile.txt", GIT_OBJECT_BLOB));
	FUNC5(FUNC9(&b, _repo, "testfile.txt", GIT_OBJECT_BLOB, NULL));
	FUNC0(FUNC8(&a, &b));

	/* equal hashes because filter is binary */
	FUNC5(FUNC7(&a, "status/testfile.bin", GIT_OBJECT_BLOB));
	FUNC5(FUNC9(&b, _repo, "testfile.bin", GIT_OBJECT_BLOB, NULL));
	FUNC1(&a, &b);

	/* equal hashes when 'as_file' points to binary filtering */
	FUNC5(FUNC7(&a, "status/testfile.txt", GIT_OBJECT_BLOB));
	FUNC5(FUNC9(&b, _repo, "testfile.txt", GIT_OBJECT_BLOB, "foo.bin"));
	FUNC1(&a, &b);

	/* not equal hashes when 'as_file' points to text filtering */
	FUNC5(FUNC7(&a, "status/testfile.bin", GIT_OBJECT_BLOB));
	FUNC5(FUNC9(&b, _repo, "testfile.bin", GIT_OBJECT_BLOB, "foo.txt"));
	FUNC0(FUNC8(&a, &b));

	/* equal hashes when 'as_file' is empty and turns off filtering */
	FUNC5(FUNC7(&a, "status/testfile.txt", GIT_OBJECT_BLOB));
	FUNC5(FUNC9(&b, _repo, "testfile.txt", GIT_OBJECT_BLOB, ""));
	FUNC1(&a, &b);

	FUNC5(FUNC7(&a, "status/testfile.bin", GIT_OBJECT_BLOB));
	FUNC5(FUNC9(&b, _repo, "testfile.bin", GIT_OBJECT_BLOB, ""));
	FUNC1(&a, &b);

	/* some hash type failures */
	FUNC3(FUNC7(&a, "status/testfile.txt", 0));
	FUNC3(FUNC9(&b, _repo, "testfile.txt", GIT_OBJECT_ANY, NULL));
}