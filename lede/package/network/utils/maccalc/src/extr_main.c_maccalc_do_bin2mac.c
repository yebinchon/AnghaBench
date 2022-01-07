
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int mac ;


 int ERR_INVALID ;
 int ERR_IO ;
 int MAC_ADDRESS_LEN ;
 int STDIN_FILENO ;
 int fprintf (int ,char*) ;
 int print_mac (unsigned char*) ;
 int read_safe (int ,unsigned char*,int) ;
 int stderr ;
 int usage () ;

__attribute__((used)) static int maccalc_do_bin2mac(int argc, const char *argv[])
{
 unsigned char mac[MAC_ADDRESS_LEN];
 ssize_t c;

 if (argc != 0) {
  usage();
  return ERR_INVALID;
 }

 c = read_safe(STDIN_FILENO, mac, sizeof(mac));
 if (c != sizeof(mac)) {
  fprintf(stderr, "failed to read from stdin\n");
  return ERR_IO;
 }

 print_mac(mac);
 return 0;
}
