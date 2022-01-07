
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,char*) ;
 char* progname ;

void usage (void) {
  printf ("usage: %s [-v] -m <log-split-mod> -n <import-file> [-o] [-x] <answer-file-prefix>\n"
   "\tConverts dump of bookmarks database into news-engine binlog\n"
    "\t-o: Split by owner (default split by place)\n"
    "\t-x: Split by (owner xor place) (default by place)\n"
    "\t-z: Use txt file for import\n", progname);
  exit(2);
}
