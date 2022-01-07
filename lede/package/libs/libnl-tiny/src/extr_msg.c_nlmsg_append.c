
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_msg {int dummy; } ;


 int NLE_NOMEM ;
 int NL_DBG (int,char*,struct nl_msg*,size_t,int) ;
 int memcpy (void*,void*,size_t) ;
 void* nlmsg_reserve (struct nl_msg*,size_t,int) ;

int nlmsg_append(struct nl_msg *n, void *data, size_t len, int pad)
{
 void *tmp;

 tmp = nlmsg_reserve(n, len, pad);
 if (tmp == ((void*)0))
  return -NLE_NOMEM;

 memcpy(tmp, data, len);
 NL_DBG(2, "msg %p: Appended %zu bytes with padding %d\n", n, len, pad);

 return 0;
}
