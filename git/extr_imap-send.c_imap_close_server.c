
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct imap_store {struct imap* imap; } ;
struct TYPE_4__ {int* fd; } ;
struct TYPE_3__ {TYPE_2__ sock; } ;
struct imap {TYPE_1__ buf; } ;


 int free (struct imap*) ;
 int imap_exec (struct imap_store*,int *,char*) ;
 int socket_shutdown (TYPE_2__*) ;

__attribute__((used)) static void imap_close_server(struct imap_store *ictx)
{
 struct imap *imap = ictx->imap;

 if (imap->buf.sock.fd[0] != -1) {
  imap_exec(ictx, ((void*)0), "LOGOUT");
  socket_shutdown(&imap->buf.sock);
 }
 free(imap);
}
