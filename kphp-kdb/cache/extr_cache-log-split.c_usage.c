
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 char* progname ;
 int stderr ;

void usage (void) {
  fprintf (stderr, "usage:\t%s [-v] [-u<username>] [-m<rem>,<mod>] <old-binlog-file> [<output-file>]\n"
      "\tCopies (some of) cache records to another binlog. "
      "If <output-file> is specified, resulting binlog is appended to it.\n"
      "\t[-h]\t\tthis help screen\n"
      "\t[-v]\t\tverbose mode on\n"
      "\t[-m<rem>,<mod>]\tcopy only record with id %% <mod> == <rem>\n"
      "\t[-s<start-binlog-pos>]\tstart reading binlog from specified position\n"
      "\t[-t<stop-binlog-pos>]\tstop reading binlog at specified position\n"
      "\t[-S<timestamp>]\tcopy logevents only after given timestamp\n"
      "\t[-L]\t\tdon't copy local copy logevents\n"
      "\t[-C<cache_id>]\twrite given cache_id to LEV_START\n"
      "\t[-u<username>]\tassume identity of given user\n",
      progname);
  exit (2);
}
