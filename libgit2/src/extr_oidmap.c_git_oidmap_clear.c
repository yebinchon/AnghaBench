
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oidmap ;


 int kh_clear (int ,int *) ;
 int oid ;

void git_oidmap_clear(git_oidmap *map)
{
 kh_clear(oid, map);
}
