
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct stat {int st_mode; } ;
struct ref_store {int dummy; } ;
struct files_ref_store {int dummy; } ;


 int REF_STORE_READ ;
 struct strbuf STRBUF_INIT ;
 scalar_t__ S_ISREG (int ) ;
 struct files_ref_store* files_downcast (struct ref_store*,int ,char*) ;
 int files_reflog_path (struct files_ref_store*,struct strbuf*,char const*) ;
 int lstat (int ,struct stat*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int files_reflog_exists(struct ref_store *ref_store,
          const char *refname)
{
 struct files_ref_store *refs =
  files_downcast(ref_store, REF_STORE_READ, "reflog_exists");
 struct strbuf sb = STRBUF_INIT;
 struct stat st;
 int ret;

 files_reflog_path(refs, &sb, refname);
 ret = !lstat(sb.buf, &st) && S_ISREG(st.st_mode);
 strbuf_release(&sb);
 return ret;
}
