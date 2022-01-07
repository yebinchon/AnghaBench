
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imap_socket {scalar_t__ ssl; } ;




 int SSL_get_error (scalar_t__,int) ;
 int fprintf (int ,char*,char const*) ;
 int perror (char const*) ;
 int ssl_socket_perror (char*) ;
 int stderr ;

__attribute__((used)) static void socket_perror(const char *func, struct imap_socket *sock, int ret)
{

 if (sock->ssl) {
  int sslerr = SSL_get_error(sock->ssl, ret);
  switch (sslerr) {
  case 129:
   break;
  case 128:
   perror("SSL_connect");
   break;
  default:
   ssl_socket_perror("SSL_connect");
   break;
  }
 } else

 {
  if (ret < 0)
   perror(func);
  else
   fprintf(stderr, "%s: unexpected EOF\n", func);
 }
}
