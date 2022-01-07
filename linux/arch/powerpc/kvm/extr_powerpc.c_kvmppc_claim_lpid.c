
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lpid_inuse ;
 int set_bit (long,int ) ;

void kvmppc_claim_lpid(long lpid)
{
 set_bit(lpid, lpid_inuse);
}
