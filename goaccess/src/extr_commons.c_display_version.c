
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* GO_VERSION ;
 char* INFO_MORE_INFO ;
 int fprintf (int ,char*,...) ;
 int stdout ;

void
display_version (void)
{
  fprintf (stdout, "GoAccess - %s.\n", GO_VERSION);
  fprintf (stdout, "%s: http://goaccess.io\n", INFO_MORE_INFO);
  fprintf (stdout, "Copyright (C) 2009-2016 by Gerardo Orellana\n");
  fprintf (stdout, "\nBuild configure arguments:\n");
}
