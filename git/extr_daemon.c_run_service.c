
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct hostinfo {int dummy; } ;
struct daemon_service {int enabled; int (* fn ) (struct argv_array const*) ;int name; int config_name; scalar_t__ overridable; } ;
struct argv_array {int dummy; } ;


 int EACCES ;
 int F_OK ;
 int SIGTERM ;
 int SIG_IGN ;
 struct strbuf STRBUF_INIT ;
 scalar_t__ access (char*,int ) ;
 scalar_t__ access_hook ;
 int daemon_error (char const*,char*) ;
 int errno ;
 int export_all_trees ;
 int git_config_get_bool (int ,int*) ;
 int logerror (char*,char const*,...) ;
 int loginfo (char*,int ,char const*) ;
 char* path_ok (char const*,struct hostinfo*) ;
 scalar_t__ run_access_hook (struct daemon_service*,char const*,char const*,struct hostinfo*) ;
 int signal (int ,int ) ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int stub1 (struct argv_array const*) ;

__attribute__((used)) static int run_service(const char *dir, struct daemon_service *service,
         struct hostinfo *hi, const struct argv_array *env)
{
 const char *path;
 int enabled = service->enabled;
 struct strbuf var = STRBUF_INIT;

 loginfo("Request %s for '%s'", service->name, dir);

 if (!enabled && !service->overridable) {
  logerror("'%s': service not enabled.", service->name);
  errno = EACCES;
  return daemon_error(dir, "service not enabled");
 }

 if (!(path = path_ok(dir, hi)))
  return daemon_error(dir, "no such repository");
 if (!export_all_trees && access("git-daemon-export-ok", F_OK)) {
  logerror("'%s': repository not exported.", path);
  errno = EACCES;
  return daemon_error(dir, "repository not exported");
 }

 if (service->overridable) {
  strbuf_addf(&var, "daemon.%s", service->config_name);
  git_config_get_bool(var.buf, &enabled);
  strbuf_release(&var);
 }
 if (!enabled) {
  logerror("'%s': service not enabled for '%s'",
    service->name, path);
  errno = EACCES;
  return daemon_error(dir, "service not enabled");
 }





 if (access_hook && run_access_hook(service, dir, path, hi))
  return -1;





 signal(SIGTERM, SIG_IGN);

 return service->fn(env);
}
