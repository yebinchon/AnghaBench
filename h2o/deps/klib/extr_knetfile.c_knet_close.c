
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ctrl_fd; int fd; scalar_t__ type; struct TYPE_4__* http_host; struct TYPE_4__* path; struct TYPE_4__* retr; struct TYPE_4__* response; struct TYPE_4__* port; struct TYPE_4__* host; } ;
typedef TYPE_1__ knetFile ;


 scalar_t__ KNF_TYPE_LOCAL ;
 int close (int) ;
 int free (TYPE_1__*) ;
 int netclose (int) ;

int knet_close(knetFile *fp)
{
 if (fp == 0) return 0;
 if (fp->ctrl_fd != -1) netclose(fp->ctrl_fd);
 if (fp->fd != -1) {


  if (fp->type == KNF_TYPE_LOCAL) close(fp->fd);
  else netclose(fp->fd);
 }
 free(fp->host); free(fp->port);
 free(fp->response); free(fp->retr);
 free(fp->path); free(fp->http_host);
 free(fp);
 return 0;
}
