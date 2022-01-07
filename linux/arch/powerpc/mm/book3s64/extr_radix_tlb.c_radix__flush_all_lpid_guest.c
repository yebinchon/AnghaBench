
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RIC_FLUSH_ALL ;
 int _tlbie_lpid_guest (unsigned int,int ) ;

void radix__flush_all_lpid_guest(unsigned int lpid)
{
 _tlbie_lpid_guest(lpid, RIC_FLUSH_ALL);
}
