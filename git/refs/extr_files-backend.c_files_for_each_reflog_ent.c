
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct ref_store {int dummy; } ;
struct files_ref_store {int dummy; } ;
typedef int each_reflog_ent_fn ;
typedef int FILE ;


 int REF_STORE_READ ;
 struct strbuf STRBUF_INIT ;
 int fclose (int *) ;
 struct files_ref_store* files_downcast (struct ref_store*,int ,char*) ;
 int files_reflog_path (struct files_ref_store*,struct strbuf*,char const*) ;
 int * fopen (int ,char*) ;
 int show_one_reflog_ent (struct strbuf*,int ,void*) ;
 int strbuf_getwholeline (struct strbuf*,int *,char) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int files_for_each_reflog_ent(struct ref_store *ref_store,
         const char *refname,
         each_reflog_ent_fn fn, void *cb_data)
{
 struct files_ref_store *refs =
  files_downcast(ref_store, REF_STORE_READ,
          "for_each_reflog_ent");
 FILE *logfp;
 struct strbuf sb = STRBUF_INIT;
 int ret = 0;

 files_reflog_path(refs, &sb, refname);
 logfp = fopen(sb.buf, "r");
 strbuf_release(&sb);
 if (!logfp)
  return -1;

 while (!ret && !strbuf_getwholeline(&sb, logfp, '\n'))
  ret = show_one_reflog_ent(&sb, fn, cb_data);
 fclose(logfp);
 strbuf_release(&sb);
 return ret;
}
