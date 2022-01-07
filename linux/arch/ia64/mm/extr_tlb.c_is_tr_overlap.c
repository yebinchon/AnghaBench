
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ia64_tr_entry {int rr; int itir; int ifa; } ;


 int RR_TO_RID (int) ;
 int ia64_get_rr (int) ;

__attribute__((used)) static int is_tr_overlap(struct ia64_tr_entry *p, u64 va, u64 log_size)
{
 u64 tr_log_size;
 u64 tr_end;
 u64 va_rr = ia64_get_rr(va);
 u64 va_rid = RR_TO_RID(va_rr);
 u64 va_end = va + (1<<log_size) - 1;

 if (va_rid != RR_TO_RID(p->rr))
  return 0;
 tr_log_size = (p->itir & 0xff) >> 2;
 tr_end = p->ifa + (1<<tr_log_size) - 1;

 if (va > tr_end || p->ifa > va_end)
  return 0;
 return 1;

}
