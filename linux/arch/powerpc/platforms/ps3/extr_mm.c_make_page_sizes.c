
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long make_page_sizes(unsigned long a, unsigned long b)
{
 return (a << 56) | (b << 48);
}
