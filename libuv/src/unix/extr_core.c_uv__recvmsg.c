
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {scalar_t__ msg_controllen; } ;
struct cmsghdr {scalar_t__ cmsg_type; int cmsg_len; } ;
typedef int ssize_t ;


 scalar_t__ CMSG_DATA (struct cmsghdr*) ;
 struct cmsghdr* CMSG_FIRSTHDR (struct msghdr*) ;
 struct cmsghdr* CMSG_NXTHDR (struct msghdr*,struct cmsghdr*) ;
 scalar_t__ EINVAL ;
 scalar_t__ SCM_RIGHTS ;
 int UV__ERR (scalar_t__) ;
 scalar_t__ errno ;
 int recvmsg (int,struct msghdr*,int) ;
 int uv__cloexec (int,int) ;

ssize_t uv__recvmsg(int fd, struct msghdr* msg, int flags) {
  struct cmsghdr* cmsg;
  ssize_t rc;
  int* pfd;
  int* end;

  static int no_msg_cmsg_cloexec;
  if (no_msg_cmsg_cloexec == 0) {
    rc = recvmsg(fd, msg, flags | 0x40000000);
    if (rc != -1)
      return rc;
    if (errno != EINVAL)
      return UV__ERR(errno);
    rc = recvmsg(fd, msg, flags);
    if (rc == -1)
      return UV__ERR(errno);
    no_msg_cmsg_cloexec = 1;
  } else {
    rc = recvmsg(fd, msg, flags);
  }



  if (rc == -1)
    return UV__ERR(errno);
  if (msg->msg_controllen == 0)
    return rc;
  for (cmsg = CMSG_FIRSTHDR(msg); cmsg != ((void*)0); cmsg = CMSG_NXTHDR(msg, cmsg))
    if (cmsg->cmsg_type == SCM_RIGHTS)
      for (pfd = (int*) CMSG_DATA(cmsg),
           end = (int*) ((char*) cmsg + cmsg->cmsg_len);
           pfd < end;
           pfd += 1)
        uv__cloexec(*pfd, 1);
  return rc;
}
