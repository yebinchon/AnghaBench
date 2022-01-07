
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp_t ;
typedef int time_t ;


 int getnanos (char const**) ;
 int parse_approx_timestamp (char const**) ;
 int parse_approxidate (char const**) ;
 int parse_dates (char const**) ;
 int show_dates (char const**,char const*) ;
 int show_human_dates (char const**) ;
 int show_relative_dates (char const**) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int strcmp (char const*,char*) ;
 int usage (int ) ;
 int usage_msg ;

int cmd__date(int argc, const char **argv)
{
 const char *x;

 argv++;
 if (!*argv)
  usage(usage_msg);
 if (!strcmp(*argv, "relative"))
  show_relative_dates(argv+1);
 else if (!strcmp(*argv, "human"))
  show_human_dates(argv+1);
 else if (skip_prefix(*argv, "show:", &x))
  show_dates(argv+1, x);
 else if (!strcmp(*argv, "parse"))
  parse_dates(argv+1);
 else if (!strcmp(*argv, "approxidate"))
  parse_approxidate(argv+1);
 else if (!strcmp(*argv, "timestamp"))
  parse_approx_timestamp(argv+1);
 else if (!strcmp(*argv, "getnanos"))
  getnanos(argv+1);
 else if (!strcmp(*argv, "is64bit"))
  return sizeof(timestamp_t) == 8 ? 0 : 1;
 else if (!strcmp(*argv, "time_t-is64bit"))
  return sizeof(time_t) == 8 ? 0 : 1;
 else
  usage(usage_msg);
 return 0;
}
