
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
 int files_ref_path (struct files_ref_store*,struct strbuf*,char*) ;
 int safe_create_dir (int ,int) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static int files_init_db(struct ref_store *ref_store, struct strbuf *err)
{
 struct files_ref_store *refs =
  files_downcast(ref_store, REF_STORE_WRITE, "init_db");
 struct strbuf sb = STRBUF_INIT;




 files_ref_path(refs, &sb, "refs/heads");
 safe_create_dir(sb.buf, 1);

 strbuf_reset(&sb);
 files_ref_path(refs, &sb, "refs/tags");
 safe_create_dir(sb.buf, 1);

 strbuf_release(&sb);
 return 0;
}
