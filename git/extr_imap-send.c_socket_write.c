
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imap_socket {int* fd; scalar_t__ ssl; } ;


 int SSL_write (scalar_t__,char const*,int) ;
 int close (int) ;
 int socket_perror (char*,struct imap_socket*,int) ;
 int write_in_full (int,char const*,int) ;

__attribute__((used)) static int socket_write(struct imap_socket *sock, const char *buf, int len)
{
 int n;

 if (sock->ssl)
  n = SSL_write(sock->ssl, buf, len);
 else

  n = write_in_full(sock->fd[1], buf, len);
 if (n != len) {
  socket_perror("write", sock, n);
  close(sock->fd[0]);
  close(sock->fd[1]);
  sock->fd[0] = sock->fd[1] = -1;
 }
 return n;
}
