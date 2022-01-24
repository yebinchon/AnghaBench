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
struct strbuf {char* buf; int len; } ;
struct git_graph {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct git_graph*) ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static void FUNC3(struct git_graph *graph,
			      FILE *file,
			      struct strbuf const *sb)
{
	char *p;

	/*
	 * Print the strbuf line by line,
	 * and display the graph info before each line but the first.
	 */
	p = sb->buf;
	while (p) {
		size_t len;
		char *next_p = FUNC2(p, '\n');
		if (next_p) {
			next_p++;
			len = next_p - p;
		} else {
			len = (sb->buf + sb->len) - p;
		}
		FUNC0(p, sizeof(char), len, file);
		if (next_p && *next_p != '\0')
			FUNC1(graph);
		p = next_p;
	}
}