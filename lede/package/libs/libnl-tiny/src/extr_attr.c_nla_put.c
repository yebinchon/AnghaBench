
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nl_msg {int nm_nlh; } ;


 int NLE_NOMEM ;
 int NL_DBG (int,char*,struct nl_msg*,int,void*,int) ;
 int memcpy (int ,void const*,int) ;
 int nla_data (struct nlattr*) ;
 struct nlattr* nla_reserve (struct nl_msg*,int,int) ;
 int nlmsg_data (int ) ;

int nla_put(struct nl_msg *msg, int attrtype, int datalen, const void *data)
{
 struct nlattr *nla;

 nla = nla_reserve(msg, attrtype, datalen);
 if (!nla)
  return -NLE_NOMEM;

 memcpy(nla_data(nla), data, datalen);
 NL_DBG(2, "msg %p: Wrote %d bytes at offset +%td for attr %d\n",
        msg, datalen, (void *) nla - nlmsg_data(msg->nm_nlh), attrtype);

 return 0;
}
