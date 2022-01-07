
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;
struct rename_cb {char* tmp_renamed_log; int true_errno; } ;
struct files_ref_store {int dummy; } ;


 scalar_t__ EISDIR ;
 struct strbuf STRBUF_INIT ;
 char const* TMP_RENAMED_LOG ;
 scalar_t__ errno ;
 int error (char*,char*,...) ;
 int files_reflog_path (struct files_ref_store*,struct strbuf*,char const*) ;
 int raceproof_create_file (char*,int ,struct rename_cb*) ;
 int rename_tmp_log_callback ;
 int strbuf_release (struct strbuf*) ;
 int strerror (int ) ;

__attribute__((used)) static int rename_tmp_log(struct files_ref_store *refs, const char *newrefname)
{
 struct strbuf path = STRBUF_INIT;
 struct strbuf tmp = STRBUF_INIT;
 struct rename_cb cb;
 int ret;

 files_reflog_path(refs, &path, newrefname);
 files_reflog_path(refs, &tmp, TMP_RENAMED_LOG);
 cb.tmp_renamed_log = tmp.buf;
 ret = raceproof_create_file(path.buf, rename_tmp_log_callback, &cb);
 if (ret) {
  if (errno == EISDIR)
   error("directory not empty: %s", path.buf);
  else
   error("unable to move logfile %s to %s: %s",
         tmp.buf, path.buf,
         strerror(cb.true_errno));
 }

 strbuf_release(&path);
 strbuf_release(&tmp);
 return ret;
}
