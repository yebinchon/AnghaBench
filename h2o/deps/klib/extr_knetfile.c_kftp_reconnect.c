
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ctrl_fd; int fd; } ;
typedef TYPE_1__ knetFile ;


 int kftp_connect (TYPE_1__*) ;
 int netclose (int) ;

int kftp_reconnect(knetFile *ftp)
{
 if (ftp->ctrl_fd != -1) {
  netclose(ftp->ctrl_fd);
  ftp->ctrl_fd = -1;
 }
 netclose(ftp->fd);
 ftp->fd = -1;
 return kftp_connect(ftp);
}
