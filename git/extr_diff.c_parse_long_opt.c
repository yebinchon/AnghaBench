
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*,char const*) ;
 int skip_prefix (char const*,char const*,char const**) ;

int parse_long_opt(const char *opt, const char **argv,
     const char **optarg)
{
 const char *arg = argv[0];
 if (!skip_prefix(arg, "--", &arg))
  return 0;
 if (!skip_prefix(arg, opt, &arg))
  return 0;
 if (*arg == '=') {
  *optarg = arg + 1;
  return 1;
 }
 if (*arg != '\0')
  return 0;

 if (!argv[1])
  die("Option '--%s' requires a value", opt);
 *optarg = argv[1];
 return 2;
}
