
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int db_align_up(unsigned int val, unsigned int size)
{
 return (val + (size - 1)) & (~(size - 1));
}
