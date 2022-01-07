
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git__tsort_cmp ;


 int git__tsort_r (void**,size_t,int ,int ) ;
 int tsort_r_cmp ;

void git__tsort(void **dst, size_t size, git__tsort_cmp cmp)
{
 git__tsort_r(dst, size, tsort_r_cmp, cmp);
}
