
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_ATOMIC ;
 scalar_t__ get_safe_page (int ) ;

__attribute__((used)) static void *alloc_pgt_page(void *context)
{
 return (void *)get_safe_page(GFP_ATOMIC);
}
