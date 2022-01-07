
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; int len; } ;
struct rev_info {int dummy; } ;
struct commit {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 scalar_t__ parse_signed_commit (struct commit*,struct strbuf*,struct strbuf*) ;
 int show_sig_lines (struct rev_info*,int,int ) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_release (struct strbuf*) ;
 int verify_signed_buffer (int ,int ,int ,int ,struct strbuf*,int *) ;

__attribute__((used)) static void show_signature(struct rev_info *opt, struct commit *commit)
{
 struct strbuf payload = STRBUF_INIT;
 struct strbuf signature = STRBUF_INIT;
 struct strbuf gpg_output = STRBUF_INIT;
 int status;

 if (parse_signed_commit(commit, &payload, &signature) <= 0)
  goto out;

 status = verify_signed_buffer(payload.buf, payload.len,
          signature.buf, signature.len,
          &gpg_output, ((void*)0));
 if (status && !gpg_output.len)
  strbuf_addstr(&gpg_output, "No signature\n");

 show_sig_lines(opt, status, gpg_output.buf);

 out:
 strbuf_release(&gpg_output);
 strbuf_release(&payload);
 strbuf_release(&signature);
}
