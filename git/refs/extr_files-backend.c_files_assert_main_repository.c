
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct files_ref_store {int store_flags; } ;


 int BUG (char*,char const*) ;
 int REF_STORE_MAIN ;

__attribute__((used)) static void files_assert_main_repository(struct files_ref_store *refs,
      const char *caller)
{
 if (refs->store_flags & REF_STORE_MAIN)
  return;

 BUG("operation %s only allowed for main ref store", caller);
}
