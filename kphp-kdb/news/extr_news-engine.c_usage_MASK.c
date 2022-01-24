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

/* Variables and functions */
 char* FullVersionStr ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 char* progname ; 

void FUNC3 (void) {
  FUNC2 ("usage: %s [-v] [-r] [-p<port>] [-u<username>] [-b<backlog>] [-c<max-conn>] [-a<binlog-name>] [-l<log-name>] [-t<days>] [-C<cache-size>] [-L] [-R] <huge-index-file> [<metaindex-file>]\n"
    "%s\n"
    "\tPerforms news/updates/bookmarks queries using given indexes\n",
    progname, FullVersionStr);
  FUNC1 ();
  FUNC0 (2);
}