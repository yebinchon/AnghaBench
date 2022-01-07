
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serve_options {int advertise_capabilities; int stateless_rpc; } ;
struct option {int dummy; } ;


 int N_ (char*) ;
 struct option OPT_BOOL (int ,char*,int *,int ) ;
 struct option OPT_END () ;
 int PARSE_OPT_KEEP_DASHDASH ;
 int PARSE_OPT_KEEP_UNKNOWN ;
 struct serve_options SERVE_OPTIONS_INIT ;
 int parse_options (int,char const**,char const*,struct option*,int ,int) ;
 int serve (struct serve_options*) ;
 int serve_usage ;
 char* setup_git_directory () ;

int cmd__serve_v2(int argc, const char **argv)
{
 struct serve_options opts = SERVE_OPTIONS_INIT;

 struct option options[] = {
  OPT_BOOL(0, "stateless-rpc", &opts.stateless_rpc,
    N_("quit after a single request/response exchange")),
  OPT_BOOL(0, "advertise-capabilities", &opts.advertise_capabilities,
    N_("exit immediately after advertising capabilities")),
  OPT_END()
 };
 const char *prefix = setup_git_directory();


 argc = parse_options(argc, argv, prefix, options, serve_usage,
        PARSE_OPT_KEEP_DASHDASH |
        PARSE_OPT_KEEP_UNKNOWN);
 serve(&opts);

 return 0;
}
