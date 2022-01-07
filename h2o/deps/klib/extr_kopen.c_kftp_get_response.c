
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_response; unsigned char* response; int ctrl_fd; } ;
typedef TYPE_1__ ftpaux_t ;


 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ read (int ,unsigned char*,int) ;
 unsigned char* realloc (unsigned char*,int) ;
 scalar_t__ socket_wait (int ,int) ;
 int strtol (char*,char**,int ) ;

__attribute__((used)) static int kftp_get_response(ftpaux_t *aux)
{
 unsigned char c;
 int n = 0;
 char *p;
 if (socket_wait(aux->ctrl_fd, 1) <= 0) return 0;
 while (read(aux->ctrl_fd, &c, 1)) {
  if (n >= aux->max_response) {
   aux->max_response = aux->max_response? aux->max_response<<1 : 256;
   aux->response = realloc(aux->response, aux->max_response);
  }
  aux->response[n++] = c;
  if (c == '\n') {
   if (n >= 4 && isdigit(aux->response[0]) && isdigit(aux->response[1]) && isdigit(aux->response[2])
    && aux->response[3] != '-') break;
   n = 0;
   continue;
  }
 }
 if (n < 2) return -1;
 aux->response[n-2] = 0;
 return strtol(aux->response, &p, 0);
}
