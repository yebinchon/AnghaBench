
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* FullVersionStr ;
 int exit (int) ;
 int printf (char*,...) ;

void usage (void) {
  printf ("%s\n", FullVersionStr);
  printf ("usage: tlc [-v] [-h] <TL-schema-file> [program-file]\n"
      "\tTL compiler\n"
      "\t-v\toutput statistical and debug information into stderr\n"
      "\t-o<filename>\toutput schema's expressions with magic-numbers to given file\n"
      "\t-E\twhenever is possible output to stdout expressions\n"
      "\t-t\ttest mode - trying to unserialize TLC output\n");
  exit (2);
}
