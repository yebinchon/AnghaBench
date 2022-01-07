
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;


 int BUG (char*) ;

__attribute__((used)) static int packed_copy_ref(struct ref_store *ref_store,
      const char *oldrefname, const char *newrefname,
      const char *logmsg)
{
 BUG("packed reference store does not support copying references");
}
