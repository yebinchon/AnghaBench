
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {int msg_iovlen; scalar_t__ msg_flags; scalar_t__ msg_controllen; int * msg_control; struct iovec* msg_iov; int msg_namelen; int * msg_name; } ;
struct mc_request {int originating_fd; int originlen; int origin; } ;
struct iovec {char* iov_base; int iov_len; } ;


 int sendmsg (int ,struct msghdr*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static int mconsole_reply_v0(struct mc_request *req, char *reply)
{
 struct iovec iov;
 struct msghdr msg;

 iov.iov_base = reply;
 iov.iov_len = strlen(reply);

 msg.msg_name = &(req->origin);
 msg.msg_namelen = req->originlen;
 msg.msg_iov = &iov;
 msg.msg_iovlen = 1;
 msg.msg_control = ((void*)0);
 msg.msg_controllen = 0;
 msg.msg_flags = 0;

 return sendmsg(req->originating_fd, &msg, 0);
}
