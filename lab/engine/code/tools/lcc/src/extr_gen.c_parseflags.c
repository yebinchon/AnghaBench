
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bflag ;
 int dflag ;
 scalar_t__ strcmp (char*,char*) ;

void parseflags(int argc, char *argv[]) {
 int i;

 for (i = 0; i < argc; i++)
  if (strcmp(argv[i], "-d") == 0)
   dflag = 1;
  else if (strcmp(argv[i], "-b") == 0)
   bflag = 1;
}
