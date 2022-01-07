
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int FLAG_RELAY ;
 int FLAG_SPAWN ;
 struct option OPT_END () ;
 struct option OPT_INTEGER (int ,char*,int*,char*) ;
 struct option OPT_STRING (int ,char*,char**,char*,char*) ;
 int die (char*) ;
 int do_cache (char*,char const*,int,int) ;
 char* get_socket_path () ;
 int parse_options (int,char const**,int *,struct option*,char const* const*,int ) ;
 int strcmp (char const*,char*) ;
 int usage_with_options (char const* const*,struct option*) ;

int cmd_main(int argc, const char **argv)
{
 char *socket_path = ((void*)0);
 int timeout = 900;
 const char *op;
 const char * const usage[] = {
  "git credential-cache [<options>] <action>",
  ((void*)0)
 };
 struct option options[] = {
  OPT_INTEGER(0, "timeout", &timeout,
       "number of seconds to cache credentials"),
  OPT_STRING(0, "socket", &socket_path, "path",
      "path of cache-daemon socket"),
  OPT_END()
 };

 argc = parse_options(argc, argv, ((void*)0), options, usage, 0);
 if (!argc)
  usage_with_options(usage, options);
 op = argv[0];

 if (!socket_path)
  socket_path = get_socket_path();
 if (!socket_path)
  die("unable to find a suitable socket path; use --socket");

 if (!strcmp(op, "exit"))
  do_cache(socket_path, op, timeout, 0);
 else if (!strcmp(op, "get") || !strcmp(op, "erase"))
  do_cache(socket_path, op, timeout, FLAG_RELAY);
 else if (!strcmp(op, "store"))
  do_cache(socket_path, op, timeout, FLAG_RELAY|FLAG_SPAWN);
 else
  ;

 return 0;
}
