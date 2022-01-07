
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*) ;
 char* progname ;
 int stderr ;

void usage (void) {
  fprintf (stderr, "usage:\t%s [-v] [-u<username>] [-m<rem>,<mod>] <old-binlog-file> [<output-file>]\n"
    "\tCopies part of photo binlog to another binlog."
    "If <output-file> is specified, resulting binlog is appended to it.\n"
    "\t-h\tthis help screen\n"
    "\t-v\tverbose mode on\n"
    "\t-m<rem>,<mod>\tcopy only record with id %% <mod> == <rem>\n"
    "\t-s<start-binlog-pos>\tstart reading binlog from specified position\n"
    "\t-t<stop-binlog-pos>\tstop reading binlog at specified position\n"
    "\t-u<username>\tassume identity of given user\n",
    progname);
}
