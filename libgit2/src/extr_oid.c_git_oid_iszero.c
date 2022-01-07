
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int git_oid_is_zero (int const*) ;

int git_oid_iszero(const git_oid *oid_a)
{
 return git_oid_is_zero(oid_a);
}
