
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_name {int dummy; } ;
typedef int git_oidmap ;
typedef int git_oid ;


 scalar_t__ oidmap_value_bykey (int *,int const*) ;

__attribute__((used)) static struct commit_name *find_commit_name(
 git_oidmap *names,
 const git_oid *peeled)
{
 return (struct commit_name *)(oidmap_value_bykey(names, peeled));
}
