
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 scalar_t__ git_oid__cmp (int const*,int const*) ;

int git_oid_equal(const git_oid *a, const git_oid *b)
{
 return (git_oid__cmp(a, b) == 0);
}
