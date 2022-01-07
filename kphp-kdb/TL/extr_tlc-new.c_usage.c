
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* FullVersionStr ;
 int exit (int) ;
 int printf (char*,...) ;

void usage (void) {
  printf ("%s\n", FullVersionStr);
  printf ("usage: tlc-new [-v] [-h] <TL-schema-file>\n"
      "\tTL compiler\n"
      "\t-v\toutput statistical and debug information into stderr\n"
      "\t-E\twhenever is possible output to stdout expressions\n"
      "\t-e <file>\texport serialized schema to file\n"
      "\t-w\t custom version of serialized schema (0 - very old, 1 - old, 2 - current (default))\n"
       );
  exit (2);
}
