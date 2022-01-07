
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_bit (long,int ) ;
 int lpid_inuse ;

void kvmppc_free_lpid(long lpid)
{
 clear_bit(lpid, lpid_inuse);
}
