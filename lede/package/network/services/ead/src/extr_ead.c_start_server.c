
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ead_instance {scalar_t__ pid; } ;


 int SIGCHLD ;
 int ead_pcap_reopen (int) ;
 int ead_pktloop () ;
 int exit (int ) ;
 scalar_t__ fork () ;
 struct ead_instance* instance ;
 int instance_handle_sigchld ;
 int nonfork ;
 int pcap_close (scalar_t__) ;
 scalar_t__ pcap_fp ;
 scalar_t__ pcap_fp_rx ;
 int signal (int ,int ) ;

__attribute__((used)) static void
start_server(struct ead_instance *i)
{
 if (!nonfork) {
  i->pid = fork();
  if (i->pid != 0) {
   if (i->pid < 0)
    i->pid = 0;
   return;
  }
 }

 instance = i;
 signal(SIGCHLD, instance_handle_sigchld);
 ead_pcap_reopen(1);
 ead_pktloop();
 pcap_close(pcap_fp);
 if (pcap_fp_rx != pcap_fp)
  pcap_close(pcap_fp_rx);

 exit(0);
}
