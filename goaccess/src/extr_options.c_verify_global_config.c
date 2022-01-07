
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int load_global_config; int iconfigfile; } ;
struct TYPE_4__ {int name; } ;


 int EOF ;
 int EXIT_FAILURE ;
 TYPE_3__ conf ;
 int exit (int ) ;
 int getopt_long (int,char**,int ,TYPE_1__*,int*) ;
 TYPE_1__* long_opts ;
 int optarg ;
 int optind ;
 int short_options ;
 int strcmp (char*,int ) ;
 int xstrdup (int ) ;

void
verify_global_config (int argc, char **argv)
{
  int o, idx = 0;

  conf.load_global_config = 1;
  while ((o = getopt_long (argc, argv, short_options, long_opts, &idx)) >= 0) {
    if (-1 == o || EOF == o)
      break;

    switch (o) {
    case 'p':
      conf.iconfigfile = xstrdup (optarg);
      break;
    case 0:
      if (!strcmp ("no-global-config", long_opts[idx].name))
        conf.load_global_config = 0;
      break;
    case '?':
      exit (EXIT_FAILURE);
    }
  }


  optind = 1;
}
