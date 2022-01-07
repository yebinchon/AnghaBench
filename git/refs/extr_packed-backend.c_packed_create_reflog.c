
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct ref_store {int dummy; } ;


 int BUG (char*) ;

__attribute__((used)) static int packed_create_reflog(struct ref_store *ref_store,
          const char *refname, int force_create,
          struct strbuf *err)
{
 BUG("packed reference store does not support reflogs");
}
