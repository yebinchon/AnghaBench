
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tempfile {int dummy; } ;
struct option {int dummy; } ;


 int N_ (char*) ;
 struct option const OPT_BOOL (int ,char*,int*,int ) ;
 struct option const OPT_END () ;
 int SIGHUP ;
 int SIG_IGN ;
 int delete_tempfile (struct tempfile**) ;
 int die (char*) ;
 int git_config_get_bool (char*,int*) ;
 int init_socket_directory (char const*) ;
 int is_absolute_path (char const*) ;
 int parse_options (int,char const**,int *,struct option const*,char const**,int ) ;
 struct tempfile* register_tempfile (char const*) ;
 int serve_cache (char const*,int) ;
 int signal (int ,int ) ;
 int usage_with_options (char const**,struct option const*) ;

int cmd_main(int argc, const char **argv)
{
 struct tempfile *socket_file;
 const char *socket_path;
 int ignore_sighup = 0;
 static const char *usage[] = {
  "git-credential-cache--daemon [opts] <socket_path>",
  ((void*)0)
 };
 int debug = 0;
 const struct option options[] = {
  OPT_BOOL(0, "debug", &debug,
    N_("print debugging messages to stderr")),
  OPT_END()
 };

 git_config_get_bool("credentialcache.ignoresighup", &ignore_sighup);

 argc = parse_options(argc, argv, ((void*)0), options, usage, 0);
 socket_path = argv[0];

 if (!socket_path)
  usage_with_options(usage, options);

 if (!is_absolute_path(socket_path))
  die("socket directory must be an absolute path");

 init_socket_directory(socket_path);
 socket_file = register_tempfile(socket_path);

 if (ignore_sighup)
  signal(SIGHUP, SIG_IGN);

 serve_cache(socket_path, debug);
 delete_tempfile(&socket_file);

 return 0;
}
