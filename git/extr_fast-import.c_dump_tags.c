
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tag {int oid; int name; struct tag* next_tag; } ;
struct strbuf {int buf; } ;
struct ref_transaction {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int error (char*,int ) ;
 int failure ;
 struct tag* first_tag ;
 struct ref_transaction* ref_transaction_begin (struct strbuf*) ;
 scalar_t__ ref_transaction_commit (struct ref_transaction*,struct strbuf*) ;
 int ref_transaction_free (struct ref_transaction*) ;
 scalar_t__ ref_transaction_update (struct ref_transaction*,int ,int *,int *,int ,char const*,struct strbuf*) ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static void dump_tags(void)
{
 static const char *msg = "fast-import";
 struct tag *t;
 struct strbuf ref_name = STRBUF_INIT;
 struct strbuf err = STRBUF_INIT;
 struct ref_transaction *transaction;

 transaction = ref_transaction_begin(&err);
 if (!transaction) {
  failure |= error("%s", err.buf);
  goto cleanup;
 }
 for (t = first_tag; t; t = t->next_tag) {
  strbuf_reset(&ref_name);
  strbuf_addf(&ref_name, "refs/tags/%s", t->name);

  if (ref_transaction_update(transaction, ref_name.buf,
        &t->oid, ((void*)0), 0, msg, &err)) {
   failure |= error("%s", err.buf);
   goto cleanup;
  }
 }
 if (ref_transaction_commit(transaction, &err))
  failure |= error("%s", err.buf);

 cleanup:
 ref_transaction_free(transaction);
 strbuf_release(&ref_name);
 strbuf_release(&err);
}
