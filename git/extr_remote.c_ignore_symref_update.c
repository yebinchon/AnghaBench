
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REF_ISSYMREF ;
 int resolve_ref_unsafe (char const*,int ,int *,int*) ;

__attribute__((used)) static int ignore_symref_update(const char *refname)
{
 int flag;

 if (!resolve_ref_unsafe(refname, 0, ((void*)0), &flag))
  return 0;
 return (flag & REF_ISSYMREF);
}
