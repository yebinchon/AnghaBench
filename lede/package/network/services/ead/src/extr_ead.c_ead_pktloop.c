
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ead_pcap_reopen (int) ;
 int handle_packet ;
 scalar_t__ pcap_dispatch (int ,int,int ,int *) ;
 int pcap_fp_rx ;

__attribute__((used)) static void
ead_pktloop(void)
{
 while (1) {
  if (pcap_dispatch(pcap_fp_rx, 1, handle_packet, ((void*)0)) < 0) {
   ead_pcap_reopen(0);
   continue;
  }
 }
}
