
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int memcpy (int *,int const*,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void submodule_copy_oid_maybe(
 git_oid *tgt, const git_oid *src, bool valid)
{
 if (tgt) {
  if (valid)
   memcpy(tgt, src, sizeof(*tgt));
  else
   memset(tgt, 0, sizeof(*tgt));
 }
}
