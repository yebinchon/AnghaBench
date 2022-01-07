
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git__strcasecmp ;
 int status_entry_cmp_base (void const*,void const*,int ) ;

__attribute__((used)) static int status_entry_icmp(const void *a, const void *b)
{
 return status_entry_cmp_base(a, b, git__strcasecmp);
}
