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
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 char* progname ; 

void FUNC2 (void) {
  FUNC1 ("usage: %s [-v] [-r] [-i] [-t] [-A] [-S] [-p<port>] [-u<username>] [-b<backlog>] [-c<max-conn>] [-a<binlog-name>] [-l<log-name>] <huge-index-file> [<metaindex-file>]\n"
	  "\t%s\n"
	  "\tPerforms search queries using given indexes\n"
	  "\tIf <metaindex-file> is not specified, <huge-index-file>.idx is used\n"
	  "\t-v\toutput statistical and debug information into stderr\n"
	  "\t-r\tread-only binlog (don't log new events)\n"
	  "\t-t\tenable tags (*word @word #word are considered words)\n"
	  "\t-A\tenable universal tag\n"
	  "\t-S\tuse stemmer\n"
	  "\t-I\timport only mode (in this mode engine only writes log indexing log events and don't update index tree)\n"
	  "\t-U\tenable UTF-8 mode\n"
	  "\t-D\tstore in item's date modification time (default: first creation time)\n"
	  "\t-B<max-binlog-size>\tdefines maximum size of each binlog file\n"
	  "\t-O\tenable tag owner mode\n",
	  progname,
	  FullVersionStr);
  FUNC0(2);
}