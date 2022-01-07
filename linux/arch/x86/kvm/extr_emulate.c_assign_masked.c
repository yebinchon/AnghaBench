
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;



__attribute__((used)) static void assign_masked(ulong *dest, ulong src, ulong mask)
{
 *dest = (*dest & ~mask) | (src & mask);
}
