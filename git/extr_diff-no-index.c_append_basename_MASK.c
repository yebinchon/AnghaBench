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
struct strbuf {int len; char* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const*) ; 
 char* FUNC2 (char const*,char) ; 

__attribute__((used)) static void FUNC3(struct strbuf *path, const char *dir, const char *file)
{
	const char *tail = FUNC2(file, '/');

	FUNC1(path, dir);
	while (path->len && path->buf[path->len - 1] == '/')
		path->len--;
	FUNC0(path, '/');
	FUNC1(path, tail ? tail + 1 : file);
}