
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nl_msg {size_t nm_size; TYPE_1__* nm_nlh; } ;
struct TYPE_2__ {size_t nlmsg_len; } ;


 int NL_DBG (int,char*,struct nl_msg*,size_t,int,size_t) ;
 int memset (void*,int ,size_t) ;

void *nlmsg_reserve(struct nl_msg *n, size_t len, int pad)
{
 void *buf = n->nm_nlh;
 size_t nlmsg_len = n->nm_nlh->nlmsg_len;
 size_t tlen;

 tlen = pad ? ((len + (pad - 1)) & ~(pad - 1)) : len;

 if ((tlen + nlmsg_len) > n->nm_size)
  return ((void*)0);

 buf += nlmsg_len;
 n->nm_nlh->nlmsg_len += tlen;

 if (tlen > len)
  memset(buf + len, 0, tlen - len);

 NL_DBG(2, "msg %p: Reserved %zu bytes, pad=%d, nlmsg_len=%d\n",
    n, len, pad, n->nm_nlh->nlmsg_len);

 return buf;
}
