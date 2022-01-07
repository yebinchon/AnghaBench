
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {int buf; int len; } ;
struct TYPE_4__ {int buf; } ;
struct TYPE_3__ {int buf; } ;
struct hostinfo {TYPE_2__ tcp_port; TYPE_1__ hostname; } ;
struct daemon_service {int name; } ;
struct child_process {int use_shell; char const** argv; int no_stdin; int no_stderr; int out; } ;


 struct child_process CHILD_PROCESS_INIT ;
 int EACCES ;
 struct strbuf STRBUF_INIT ;
 int access_hook ;
 scalar_t__ close (int) ;
 int daemon_error (char const*,int ) ;
 int errno ;
 scalar_t__ finish_command (struct child_process*) ;
 int get_canon_hostname (struct hostinfo*) ;
 int get_ip_address (struct hostinfo*) ;
 int logerror (char*,int ) ;
 scalar_t__ start_command (struct child_process*) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_ltrim (struct strbuf*) ;
 scalar_t__ strbuf_read (struct strbuf*,int,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 char* strchr (int ,char) ;

__attribute__((used)) static int run_access_hook(struct daemon_service *service, const char *dir,
      const char *path, struct hostinfo *hi)
{
 struct child_process child = CHILD_PROCESS_INIT;
 struct strbuf buf = STRBUF_INIT;
 const char *argv[8];
 const char **arg = argv;
 char *eol;
 int seen_errors = 0;

 *arg++ = access_hook;
 *arg++ = service->name;
 *arg++ = path;
 *arg++ = hi->hostname.buf;
 *arg++ = get_canon_hostname(hi);
 *arg++ = get_ip_address(hi);
 *arg++ = hi->tcp_port.buf;
 *arg = ((void*)0);

 child.use_shell = 1;
 child.argv = argv;
 child.no_stdin = 1;
 child.no_stderr = 1;
 child.out = -1;
 if (start_command(&child)) {
  logerror("daemon access hook '%s' failed to start",
    access_hook);
  goto error_return;
 }
 if (strbuf_read(&buf, child.out, 0) < 0) {
  logerror("failed to read from pipe to daemon access hook '%s'",
    access_hook);
  strbuf_reset(&buf);
  seen_errors = 1;
 }
 if (close(child.out) < 0) {
  logerror("failed to close pipe to daemon access hook '%s'",
    access_hook);
  seen_errors = 1;
 }
 if (finish_command(&child))
  seen_errors = 1;

 if (!seen_errors) {
  strbuf_release(&buf);
  return 0;
 }

error_return:
 strbuf_ltrim(&buf);
 if (!buf.len)
  strbuf_addstr(&buf, "service rejected");
 eol = strchr(buf.buf, '\n');
 if (eol)
  *eol = '\0';
 errno = EACCES;
 daemon_error(dir, buf.buf);
 strbuf_release(&buf);
 return -1;
}
