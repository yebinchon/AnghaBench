
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MDFile (char*) ;
 int MDFilter () ;
 int MDString (char*) ;
 int MDTestSuite () ;
 int MDTimeTrial () ;
 scalar_t__ strcmp (char*,char*) ;

int main(int argc, char *argv[])
{
  int i;

  if (argc > 1) {
    for (i = 1; i < argc; i++) {
      if (argv[i][0] == '-' && argv[i][1] == 's')
        MDString(argv[i] + 2);
      else if (strcmp(argv[i], "-t") == 0)
        MDTimeTrial();
      else if (strcmp(argv[i], "-x") == 0)
        MDTestSuite();
      else
        MDFile(argv[i]);
    }
  } else {
    MDFilter();
  }

  return (0);
}
