
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pack_copy_priority (char const*) ;

__attribute__((used)) static int pack_copy_cmp(const char *a, const char *b)
{
 return pack_copy_priority(a) - pack_copy_priority(b);
}
