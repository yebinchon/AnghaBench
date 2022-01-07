
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options {int unlink; int iocp; char* docroot; int verbose; int unixsock; int port; } ;
typedef int o ;


 int atoi (int ) ;
 int fprintf (int ,char*,int) ;
 int getopt (int,char**,char*) ;
 int memset (struct options*,int ,int) ;
 int optarg ;
 int optind ;
 int print_usage (int ,char*,int) ;
 int stderr ;
 int stdout ;

__attribute__((used)) static struct options
parse_opts(int argc, char **argv)
{
 struct options o;
 int opt;

 memset(&o, 0, sizeof(o));

 while ((opt = getopt(argc, argv, "hp:U:uIv")) != -1) {
  switch (opt) {
   case 'p': o.port = atoi(optarg); break;
   case 'U': o.unixsock = optarg; break;
   case 'u': o.unlink = 1; break;
   case 'I': o.iocp = 1; break;
   case 'v': ++o.verbose; break;
   case 'h': print_usage(stdout, argv[0], 0); break;
   default : fprintf(stderr, "Unknown option %c\n", opt); break;
  }
 }

 if (optind >= argc || (argc - optind) > 1) {
  print_usage(stdout, argv[0], 1);
 }
 o.docroot = argv[optind];

 return o;
}
