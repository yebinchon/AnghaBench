
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ctrl_fd; int port; int host; } ;
typedef TYPE_1__ knetFile ;


 int kftp_get_response (TYPE_1__*) ;
 int kftp_send_cmd (TYPE_1__*,char*,int) ;
 int socket_connect (int ,int ) ;

int kftp_connect(knetFile *ftp)
{
 ftp->ctrl_fd = socket_connect(ftp->host, ftp->port);
 if (ftp->ctrl_fd == -1) return -1;
 kftp_get_response(ftp);
 kftp_send_cmd(ftp, "USER anonymous\r\n", 1);
 kftp_send_cmd(ftp, "PASS kftp@\r\n", 1);
 kftp_send_cmd(ftp, "TYPE I\r\n", 1);
 return 0;
}
