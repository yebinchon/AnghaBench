
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*) ;
 char* progname ;
 int stderr ;

void usage (void) {
  fprintf (stderr, "usage:\t%s [-v] [-u<username>] [-t<seconds-ago>] <old-binlog-file> [<output-binlog-file>]\n"
    "\tAppends most recent privacy records from first binlog to another binlog. "
    "If <output-binlog-file> is specified, resulting binlog is appended to it.\n"
    "\t-h\tthis help screen\n"
    "\t-v\tverbose mode on\n"
    "\t-t\tcutoff time relative to present moment\n"
    "\t-i\tdo not import timestamps\n"
    "\t-u<username>\tassume identity of given user\n",
    progname);
}
