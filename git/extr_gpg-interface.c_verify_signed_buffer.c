
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf; } ;
struct tempfile {TYPE_1__ filename; int fd; } ;
struct strbuf {int buf; } ;
struct gpg_format {int verify_args; int program; } ;
struct child_process {int args; } ;


 int BUG (char*,char const*) ;
 struct child_process CHILD_PROCESS_INIT ;
 int SIGPIPE ;
 int SIG_IGN ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int argv_array_push (int *,int ) ;
 int argv_array_pushl (int *,char*,char*,int ,char*,int *) ;
 int argv_array_pushv (int *,int ) ;
 scalar_t__ close_tempfile_gently (struct tempfile*) ;
 int delete_tempfile (struct tempfile**) ;
 int error_errno (int ,...) ;
 struct gpg_format* get_format_by_sig (char const*) ;
 struct tempfile* mks_tempfile_t (char*) ;
 int pipe_command (struct child_process*,char const*,size_t,struct strbuf*,int ,struct strbuf*,int ) ;
 int sigchain_pop (int ) ;
 int sigchain_push (int ,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strstr (int ,char*) ;
 scalar_t__ write_in_full (int ,char const*,size_t) ;

int verify_signed_buffer(const char *payload, size_t payload_size,
    const char *signature, size_t signature_size,
    struct strbuf *gpg_output, struct strbuf *gpg_status)
{
 struct child_process gpg = CHILD_PROCESS_INIT;
 struct gpg_format *fmt;
 struct tempfile *temp;
 int ret;
 struct strbuf buf = STRBUF_INIT;

 temp = mks_tempfile_t(".git_vtag_tmpXXXXXX");
 if (!temp)
  return error_errno(_("could not create temporary file"));
 if (write_in_full(temp->fd, signature, signature_size) < 0 ||
     close_tempfile_gently(temp) < 0) {
  error_errno(_("failed writing detached signature to '%s'"),
       temp->filename.buf);
  delete_tempfile(&temp);
  return -1;
 }

 fmt = get_format_by_sig(signature);
 if (!fmt)
  BUG("bad signature '%s'", signature);

 argv_array_push(&gpg.args, fmt->program);
 argv_array_pushv(&gpg.args, fmt->verify_args);
 argv_array_pushl(&gpg.args,
    "--status-fd=1",
    "--verify", temp->filename.buf, "-",
    ((void*)0));

 if (!gpg_status)
  gpg_status = &buf;

 sigchain_push(SIGPIPE, SIG_IGN);
 ret = pipe_command(&gpg, payload, payload_size,
      gpg_status, 0, gpg_output, 0);
 sigchain_pop(SIGPIPE);

 delete_tempfile(&temp);

 ret |= !strstr(gpg_status->buf, "\n[GNUPG:] GOODSIG ");
 strbuf_release(&buf);

 return ret;
}
