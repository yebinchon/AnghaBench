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
struct stat {int /*<<< orphan*/  st_mtime; int /*<<< orphan*/  st_size; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  content_length ; 
 int /*<<< orphan*/  content_type ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int,struct stat*) ; 
 char* FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  last_modified ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,scalar_t__) ; 
 char* FUNC13 (size_t) ; 
 scalar_t__ FUNC14 (int,char*,size_t) ; 

__attribute__((used)) static void FUNC15(struct strbuf *hdr, const char *the_type,
				const char *name)
{
	char *p = FUNC5("%s", name);
	size_t buf_alloc = 8192;
	char *buf = FUNC13(buf_alloc);
	int fd;
	struct stat sb;

	fd = FUNC10(p, O_RDONLY);
	if (fd < 0)
		FUNC9(hdr, "Cannot open '%s': %s", p, FUNC11(errno));
	if (FUNC4(fd, &sb) < 0)
		FUNC1("Cannot stat '%s'", p);

	FUNC7(hdr, content_length, sb.st_size);
	FUNC8(hdr, content_type, the_type);
	FUNC6(hdr, last_modified, sb.st_mtime);
	FUNC2(hdr);

	for (;;) {
		ssize_t n = FUNC14(fd, buf, buf_alloc);
		if (n < 0)
			FUNC1("Cannot read '%s'", p);
		if (!n)
			break;
		FUNC12(1, buf, n);
	}
	FUNC0(fd);
	FUNC3(buf);
	FUNC3(p);
}