
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* response; int pasv_port; int pasv_ip; } ;
typedef TYPE_1__ knetFile ;


 int kftp_send_cmd (TYPE_1__*,char*,int) ;
 int memcpy (int ,int*,int) ;
 int sscanf (char*,char*,int*,int*,int*,int*,int*,int*) ;

__attribute__((used)) static int kftp_pasv_prep(knetFile *ftp)
{
 char *p;
 int v[6];
 kftp_send_cmd(ftp, "PASV\r\n", 1);
 for (p = ftp->response; *p && *p != '('; ++p);
 if (*p != '(') return -1;
 ++p;
 sscanf(p, "%d,%d,%d,%d,%d,%d", &v[0], &v[1], &v[2], &v[3], &v[4], &v[5]);
 memcpy(ftp->pasv_ip, v, 4 * sizeof(int));
 ftp->pasv_port = (v[4]<<8&0xff00) + v[5];
 return 0;
}
