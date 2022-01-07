
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imap_socket {int * fd; scalar_t__ ssl; } ;


 int SSL_free (scalar_t__) ;
 int SSL_shutdown (scalar_t__) ;
 int close (int ) ;

__attribute__((used)) static void socket_shutdown(struct imap_socket *sock)
{

 if (sock->ssl) {
  SSL_shutdown(sock->ssl);
  SSL_free(sock->ssl);
 }

 close(sock->fd[0]);
 close(sock->fd[1]);
}
