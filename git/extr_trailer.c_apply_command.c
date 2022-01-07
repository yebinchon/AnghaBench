
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;
struct child_process {char const** argv; int no_stdin; int use_shell; int env; } ;


 struct child_process CHILD_PROCESS_INIT ;
 struct strbuf STRBUF_INIT ;
 int TRAILER_ARG_STRING ;
 int _ (char*) ;
 scalar_t__ capture_command (struct child_process*,struct strbuf*,int) ;
 int error (int ,char*) ;
 int local_repo_env ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_replace (struct strbuf*,int ,char const*) ;
 int strbuf_trim (struct strbuf*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static char *apply_command(const char *command, const char *arg)
{
 struct strbuf cmd = STRBUF_INIT;
 struct strbuf buf = STRBUF_INIT;
 struct child_process cp = CHILD_PROCESS_INIT;
 const char *argv[] = {((void*)0), ((void*)0)};
 char *result;

 strbuf_addstr(&cmd, command);
 if (arg)
  strbuf_replace(&cmd, TRAILER_ARG_STRING, arg);

 argv[0] = cmd.buf;
 cp.argv = argv;
 cp.env = local_repo_env;
 cp.no_stdin = 1;
 cp.use_shell = 1;

 if (capture_command(&cp, &buf, 1024)) {
  error(_("running trailer command '%s' failed"), cmd.buf);
  strbuf_release(&buf);
  result = xstrdup("");
 } else {
  strbuf_trim(&buf);
  result = strbuf_detach(&buf, ((void*)0));
 }

 strbuf_release(&cmd);
 return result;
}
