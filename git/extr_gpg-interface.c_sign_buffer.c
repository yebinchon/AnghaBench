
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {size_t len; char* buf; } ;
struct child_process {int args; } ;
struct TYPE_2__ {int program; } ;


 struct child_process CHILD_PROCESS_INIT ;
 int SIGPIPE ;
 int SIG_IGN ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int argv_array_pushl (int *,int ,char*,char*,char const*,int *) ;
 int error (int ) ;
 int pipe_command (struct child_process*,char*,size_t,struct strbuf*,int,struct strbuf*,int ) ;
 int sigchain_pop (int ) ;
 int sigchain_push (int ,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,size_t) ;
 int strstr (char*,char*) ;
 TYPE_1__* use_format ;

int sign_buffer(struct strbuf *buffer, struct strbuf *signature, const char *signing_key)
{
 struct child_process gpg = CHILD_PROCESS_INIT;
 int ret;
 size_t i, j, bottom;
 struct strbuf gpg_status = STRBUF_INIT;

 argv_array_pushl(&gpg.args,
    use_format->program,
    "--status-fd=2",
    "-bsau", signing_key,
    ((void*)0));

 bottom = signature->len;





 sigchain_push(SIGPIPE, SIG_IGN);
 ret = pipe_command(&gpg, buffer->buf, buffer->len,
      signature, 1024, &gpg_status, 0);
 sigchain_pop(SIGPIPE);

 ret |= !strstr(gpg_status.buf, "\n[GNUPG:] SIG_CREATED ");
 strbuf_release(&gpg_status);
 if (ret)
  return error(_("gpg failed to sign the data"));


 for (i = j = bottom; i < signature->len; i++)
  if (signature->buf[i] != '\r') {
   if (i != j)
    signature->buf[j] = signature->buf[i];
   j++;
  }
 strbuf_setlen(signature, j);

 return 0;
}
