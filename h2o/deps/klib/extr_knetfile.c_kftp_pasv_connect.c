
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pasv_port; int* pasv_ip; int fd; } ;
typedef TYPE_1__ knetFile ;


 int fprintf (int ,char*) ;
 int socket_connect (char*,char*) ;
 int sprintf (char*,char*,int,...) ;
 int stderr ;

__attribute__((used)) static int kftp_pasv_connect(knetFile *ftp)
{
 char host[80], port[10];
 if (ftp->pasv_port == 0) {
  fprintf(stderr, "[kftp_pasv_connect] kftp_pasv_prep() is not called before hand.\n");
  return -1;
 }
 sprintf(host, "%d.%d.%d.%d", ftp->pasv_ip[0], ftp->pasv_ip[1], ftp->pasv_ip[2], ftp->pasv_ip[3]);
 sprintf(port, "%d", ftp->pasv_port);
 ftp->fd = socket_connect(host, port);
 if (ftp->fd == -1) return -1;
 return 0;
}
