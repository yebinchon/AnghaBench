
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct mconsole_reply {int err; int more; char* data; int len; } ;
struct mc_request {int originlen; scalar_t__ origin; int originating_fd; } ;
typedef int reply ;


 scalar_t__ MCONSOLE_MAX_DATA ;
 int MIN (int,scalar_t__) ;
 int errno ;
 int memcpy (char*,char const*,int) ;
 int sendto (int ,struct mconsole_reply*,int,int ,struct sockaddr*,int ) ;

int mconsole_reply_len(struct mc_request *req, const char *str, int total,
         int err, int more)
{





 struct mconsole_reply reply;
 int len, n;

 do {
  reply.err = err;


  err = 0;

  len = MIN(total, MCONSOLE_MAX_DATA - 1);

  if (len == total) reply.more = more;
  else reply.more = 1;

  memcpy(reply.data, str, len);
  reply.data[len] = '\0';
  total -= len;
  str += len;
  reply.len = len + 1;

  len = sizeof(reply) + reply.len - sizeof(reply.data);

  n = sendto(req->originating_fd, &reply, len, 0,
      (struct sockaddr *) req->origin, req->originlen);

  if (n < 0)
   return -errno;
 } while (total > 0);
 return 0;
}
