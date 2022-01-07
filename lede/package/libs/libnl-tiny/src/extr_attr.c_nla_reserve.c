
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nlattr {int nla_type; int nla_len; } ;
struct nl_msg {int nm_size; TYPE_1__* nm_nlh; } ;
struct TYPE_3__ {int nlmsg_len; } ;


 int NLMSG_ALIGN (int) ;
 int NL_DBG (int,char*,struct nl_msg*,int,void*,int,int) ;
 int memset (unsigned char*,int ,int ) ;
 int nla_attr_size (int) ;
 int nla_padlen (int) ;
 int nla_total_size (int) ;
 int nlmsg_data (TYPE_1__*) ;
 scalar_t__ nlmsg_tail (TYPE_1__*) ;

struct nlattr *nla_reserve(struct nl_msg *msg, int attrtype, int attrlen)
{
 struct nlattr *nla;
 int tlen;

 tlen = NLMSG_ALIGN(msg->nm_nlh->nlmsg_len) + nla_total_size(attrlen);

 if ((tlen + msg->nm_nlh->nlmsg_len) > msg->nm_size)
  return ((void*)0);

 nla = (struct nlattr *) nlmsg_tail(msg->nm_nlh);
 nla->nla_type = attrtype;
 nla->nla_len = nla_attr_size(attrlen);

 memset((unsigned char *) nla + nla->nla_len, 0, nla_padlen(attrlen));
 msg->nm_nlh->nlmsg_len = tlen;

 NL_DBG(2, "msg %p: Reserved %d bytes at offset +%td for attr %d "
    "nlmsg_len=%d\n", msg, attrlen,
    (void *) nla - nlmsg_data(msg->nm_nlh),
    attrtype, msg->nm_nlh->nlmsg_len);

 return nla;
}
