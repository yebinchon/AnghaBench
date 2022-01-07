
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct ref_transaction {int dummy; } ;
struct object_id {int dummy; } ;


 int BUG (char*,unsigned int) ;
 int REFNAME_ALLOW_ONELEVEL ;
 unsigned int REF_HAVE_NEW ;
 unsigned int REF_HAVE_OLD ;
 unsigned int REF_TRANSACTION_UPDATE_ALLOWED_FLAGS ;
 int _ (char*) ;
 int assert (struct strbuf*) ;
 int check_refname_format (char const*,int ) ;
 int is_null_oid (struct object_id const*) ;
 int ref_transaction_add_update (struct ref_transaction*,char const*,unsigned int,struct object_id const*,struct object_id const*,char const*) ;
 int refname_is_safe (char const*) ;
 int strbuf_addf (struct strbuf*,int ,char const*) ;

int ref_transaction_update(struct ref_transaction *transaction,
      const char *refname,
      const struct object_id *new_oid,
      const struct object_id *old_oid,
      unsigned int flags, const char *msg,
      struct strbuf *err)
{
 assert(err);

 if ((new_oid && !is_null_oid(new_oid)) ?
     check_refname_format(refname, REFNAME_ALLOW_ONELEVEL) :
     !refname_is_safe(refname)) {
  strbuf_addf(err, _("refusing to update ref with bad name '%s'"),
       refname);
  return -1;
 }

 if (flags & ~REF_TRANSACTION_UPDATE_ALLOWED_FLAGS)
  BUG("illegal flags 0x%x passed to ref_transaction_update()", flags);

 flags |= (new_oid ? REF_HAVE_NEW : 0) | (old_oid ? REF_HAVE_OLD : 0);

 ref_transaction_add_update(transaction, refname, flags,
       new_oid, old_oid, msg);
 return 0;
}
