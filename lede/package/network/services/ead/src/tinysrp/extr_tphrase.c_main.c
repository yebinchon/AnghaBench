
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Configindex ;
 int EOF ;
 int Passfile ;
 char* Progname ;
 int USAGE () ;
 int atoi (int ) ;
 int doit (char*) ;
 int exit (int) ;
 int getopt (int,char**,char*) ;
 int optarg ;
 scalar_t__ optind ;

int main(int argc, char **argv)
{
 int c;

 Progname = *argv;



 while ((c = getopt(argc, argv, "n:p:")) != EOF) {
  switch (c) {

  case 'n':
   Configindex = atoi(optarg);
   break;

  case 'p':
   Passfile = optarg;
   break;

  default:
   USAGE();
   exit(1);
  }
 }
 argc -= optind;
 argv += optind;

 if (argc != 1) {
  USAGE();
  exit(1);
 }
 doit(argv[0]);

 return 0;
}
