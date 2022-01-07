
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_sglist {int bufs; } ;


 int __testmgr_alloc_buf (int ,int) ;

__attribute__((used)) static int init_test_sglist(struct test_sglist *tsgl)
{
 return __testmgr_alloc_buf(tsgl->bufs, 1 );
}
