
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _extend (int) ;

void test_core_ftruncate__2gb(void)
{
 _extend(0x80000001);
}
