
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_bit (int,unsigned long*) ;

__attribute__((used)) static bool test_msr(int idx, void *data)
{
 return test_bit(idx, (unsigned long *) data);
}
