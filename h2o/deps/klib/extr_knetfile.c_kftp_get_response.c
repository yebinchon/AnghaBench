
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_response; char* response; int ctrl_fd; } ;
typedef TYPE_1__ knetFile ;


 scalar_t__ isdigit (char) ;
 scalar_t__ netread (int ,char*,int) ;
 scalar_t__ realloc (char*,int) ;
 scalar_t__ socket_wait (int ,int) ;
 int strtol (char*,char**,int ) ;

__attribute__((used)) static int kftp_get_response(knetFile *ftp)
{

 unsigned char c;



 int n = 0;
 char *p;
 if (socket_wait(ftp->ctrl_fd, 1) <= 0) return 0;
 while (netread(ftp->ctrl_fd, &c, 1)) {

  if (n >= ftp->max_response) {
   ftp->max_response = ftp->max_response? ftp->max_response<<1 : 256;
   ftp->response = (char*)realloc(ftp->response, ftp->max_response);
  }
  ftp->response[n++] = c;
  if (c == '\n') {
   if (n >= 4 && isdigit(ftp->response[0]) && isdigit(ftp->response[1]) && isdigit(ftp->response[2])
    && ftp->response[3] != '-') break;
   n = 0;
   continue;
  }
 }
 if (n < 2) return -1;
 ftp->response[n-2] = 0;
 return strtol(ftp->response, &p, 0);
}
