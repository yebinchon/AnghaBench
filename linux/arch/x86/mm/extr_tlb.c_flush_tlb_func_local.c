
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flush_tlb_info {int dummy; } ;
typedef enum tlb_flush_reason { ____Placeholder_tlb_flush_reason } tlb_flush_reason ;


 int flush_tlb_func_common (struct flush_tlb_info const*,int,int) ;

__attribute__((used)) static void flush_tlb_func_local(const void *info, enum tlb_flush_reason reason)
{
 const struct flush_tlb_info *f = info;

 flush_tlb_func_common(f, 1, reason);
}
