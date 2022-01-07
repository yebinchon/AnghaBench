
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* FullVersionStr ;
 int exit (int) ;
 int printf (char*,...) ;

void usage (void) {
  printf ("%s\n", FullVersionStr);
  printf (
    "tag-binlog [-u<username>] [-v] <binlog>\n"
    "\tAppending LEV_TAG tool.\n"
    "\t[-v]\t\toutput statistical and debug information into stderr\n"
    "\t[-a]\t\tappend random tag\n"
    "\t[-t<tag>]\tappend given tag\n"
    "\t[-i]\t\tinformation mode - print tag and exit\n"
  );
  exit (2);
}
