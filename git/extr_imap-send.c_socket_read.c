
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imap_socket {int* fd; scalar_t__ ssl; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ SSL_read (scalar_t__,char*,int) ;
 int close (int) ;
 int socket_perror (char*,struct imap_socket*,scalar_t__) ;
 scalar_t__ xread (int,char*,int) ;

__attribute__((used)) static int socket_read(struct imap_socket *sock, char *buf, int len)
{
 ssize_t n;

 if (sock->ssl)
  n = SSL_read(sock->ssl, buf, len);
 else

  n = xread(sock->fd[0], buf, len);
 if (n <= 0) {
  socket_perror("read", sock, n);
  close(sock->fd[0]);
  close(sock->fd[1]);
  sock->fd[0] = sock->fd[1] = -1;
 }
 return n;
}
