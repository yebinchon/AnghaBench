
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct ref_store {int dummy; } ;
struct files_ref_store {int dummy; } ;


 int REF_STORE_WRITE ;
 struct strbuf STRBUF_INIT ;
 struct files_ref_store* files_downcast (struct ref_store*,int ,char*) ;
 int files_reflog_path (struct files_ref_store*,struct strbuf*,char const*) ;
 int remove_path (int ) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int files_delete_reflog(struct ref_store *ref_store,
          const char *refname)
{
 struct files_ref_store *refs =
  files_downcast(ref_store, REF_STORE_WRITE, "delete_reflog");
 struct strbuf sb = STRBUF_INIT;
 int ret;

 files_reflog_path(refs, &sb, refname);
 ret = remove_path(sb.buf);
 strbuf_release(&sb);
 return ret;
}
