
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bind_port; int bind_host; } ;
typedef TYPE_1__ server_config ;


 int getopt (int,char**,char*) ;
 int optarg ;
 int pr_err (char*,int ) ;
 int sscanf (int ,char*,int *) ;
 int usage () ;

__attribute__((used)) static void parse_opts(server_config *cf, int argc, char **argv) {
  int opt;

  while (-1 != (opt = getopt(argc, argv, "b:hp:"))) {
    switch (opt) {
      case 'b':
        cf->bind_host = optarg;
        break;

      case 'p':
        if (1 != sscanf(optarg, "%hu", &cf->bind_port)) {
          pr_err("bad port number: %s", optarg);
          usage();
        }
        break;

      default:
        usage();
    }
  }
}
