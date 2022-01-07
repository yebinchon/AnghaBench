
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcap_data {int * pcap; int * compiled; } ;


 int pcap_close (int *) ;
 int pcap_freecode (int *) ;

__attribute__((used)) static void pcap_remove(void *data)
{
 struct pcap_data *pri = data;

 if (pri->compiled != ((void*)0))
  pcap_freecode(pri->compiled);

 if (pri->pcap != ((void*)0))
  pcap_close(pri->pcap);
}
