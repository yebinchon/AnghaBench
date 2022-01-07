
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ctrl_fd; } ;
typedef TYPE_1__ ftpaux_t ;


 int kftp_get_response (TYPE_1__*) ;
 scalar_t__ socket_wait (int ,int ) ;
 int strlen (char const*) ;
 int write (int ,char const*,int ) ;

__attribute__((used)) static int kftp_send_cmd(ftpaux_t *aux, const char *cmd, int is_get)
{
 if (socket_wait(aux->ctrl_fd, 0) <= 0) return -1;
 write(aux->ctrl_fd, cmd, strlen(cmd));
 return is_get? kftp_get_response(aux) : 0;
}
