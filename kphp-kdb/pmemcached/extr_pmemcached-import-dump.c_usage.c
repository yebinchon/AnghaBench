
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*) ;
 char* progname ;
 int stderr ;

void usage (void) {
  fprintf (stderr, "usage:\t%s [-v] [-n] [-u<username>] [-m<rem>,<mod>] [-s<mode>] [-f<format>] [-o<output-class>] <input-file> [<output-file>]\n"
      "\tConverts tab-separated table dump into KDB binlog. "
      "If <output-file> is specified, resulting binlog is appended to it.\n"
      "\t-h\tthis help screen\n"
      "\t-v\tverbose mode on\n"
      "\t-u<username>\tassume identity of given user\n"
      "\t-s<mode>\tsplit mode: hash, firstint, ...\n"
      "\t-m<rem>,<mod>\tslice parameters: consider only objects with id %% mod == rem\n"
      "\t-n\tindex objects with negative ids\n"
      "\t-o<int>\tdetermines output format\n"
      "\t-f<format>\tdetermines dump format, one of short_urls, api_uvars, storage_img, ...\n"
      "\t-k<server>\tfile source server (actual for kad)\n"
      "\t-l\t skip bad lines instead of assert\n",
      progname);
}
