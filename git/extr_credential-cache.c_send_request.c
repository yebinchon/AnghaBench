
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
typedef int in ;


 scalar_t__ ECONNRESET ;
 int SHUT_WR ;
 int close (int) ;
 int die_errno (char*) ;
 scalar_t__ errno ;
 int read_in_full (int,char*,int) ;
 int shutdown (int,int ) ;
 int unix_stream_connect (char const*) ;
 scalar_t__ write_in_full (int,int ,int ) ;
 int write_or_die (int,char*,int) ;

__attribute__((used)) static int send_request(const char *socket, const struct strbuf *out)
{
 int got_data = 0;
 int fd = unix_stream_connect(socket);

 if (fd < 0)
  return -1;

 if (write_in_full(fd, out->buf, out->len) < 0)
  die_errno("unable to write to cache daemon");
 shutdown(fd, SHUT_WR);

 while (1) {
  char in[1024];
  int r;

  r = read_in_full(fd, in, sizeof(in));
  if (r == 0 || (r < 0 && errno == ECONNRESET))
   break;
  if (r < 0)
   die_errno("read error from cache daemon");
  write_or_die(1, in, r);
  got_data = 1;
 }
 close(fd);
 return got_data;
}
