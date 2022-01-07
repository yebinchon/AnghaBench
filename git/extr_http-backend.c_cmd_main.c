
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct service_cmd {char* method; int (* imp ) (struct strbuf*,char*) ;int pattern; } ;
struct TYPE_3__ {size_t rm_eo; size_t rm_so; } ;
typedef TYPE_1__ regmatch_t ;
typedef int regex_t ;


 int ARRAY_SIZE (struct service_cmd*) ;
 int F_OK ;
 int REG_EXTENDED ;
 struct strbuf STRBUF_INIT ;
 scalar_t__ access (char*,int ) ;
 int bad_request (struct strbuf*,struct service_cmd*) ;
 int die (char*,...) ;
 int die_webcgi ;
 int die_webcgi_recursing ;
 int enter_repo (char*,int ) ;
 char* getdir () ;
 char* getenv (char*) ;
 int git_env_ulong (char*,int ) ;
 int http_config () ;
 int max_request_buffer ;
 int not_found (struct strbuf*,char*,char*) ;
 scalar_t__ regcomp (int *,int ,int ) ;
 int regexec (int *,char*,int,TYPE_1__*,int ) ;
 int regfree (int *) ;
 struct service_cmd* services ;
 int set_die_is_recursing_routine (int ) ;
 int set_die_routine (int ) ;
 int setup_path () ;
 scalar_t__ strcmp (char*,char*) ;
 int stub1 (struct strbuf*,char*) ;
 char* xmemdupz (char*,size_t) ;

int cmd_main(int argc, const char **argv)
{
 char *method = getenv("REQUEST_METHOD");
 char *dir;
 struct service_cmd *cmd = ((void*)0);
 char *cmd_arg = ((void*)0);
 int i;
 struct strbuf hdr = STRBUF_INIT;

 set_die_routine(die_webcgi);
 set_die_is_recursing_routine(die_webcgi_recursing);

 if (!method)
  die("No REQUEST_METHOD from server");
 if (!strcmp(method, "HEAD"))
  method = "GET";
 dir = getdir();

 for (i = 0; i < ARRAY_SIZE(services); i++) {
  struct service_cmd *c = &services[i];
  regex_t re;
  regmatch_t out[1];

  if (regcomp(&re, c->pattern, REG_EXTENDED))
   die("Bogus regex in service table: %s", c->pattern);
  if (!regexec(&re, dir, 1, out, 0)) {
   size_t n;

   if (strcmp(method, c->method))
    return bad_request(&hdr, c);

   cmd = c;
   n = out[0].rm_eo - out[0].rm_so;
   cmd_arg = xmemdupz(dir + out[0].rm_so + 1, n - 1);
   dir[out[0].rm_so] = 0;
   break;
  }
  regfree(&re);
 }

 if (!cmd)
  not_found(&hdr, "Request not supported: '%s'", dir);

 setup_path();
 if (!enter_repo(dir, 0))
  not_found(&hdr, "Not a git repository: '%s'", dir);
 if (!getenv("GIT_HTTP_EXPORT_ALL") &&
     access("git-daemon-export-ok", F_OK) )
  not_found(&hdr, "Repository not exported: '%s'", dir);

 http_config();
 max_request_buffer = git_env_ulong("GIT_HTTP_MAX_REQUEST_BUFFER",
        max_request_buffer);

 cmd->imp(&hdr, cmd_arg);
 return 0;
}
