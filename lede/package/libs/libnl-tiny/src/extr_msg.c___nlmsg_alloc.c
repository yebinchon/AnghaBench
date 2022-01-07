
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nlmsghdr {int dummy; } ;
struct nl_msg {int nm_refcnt; int nm_protocol; size_t nm_size; TYPE_1__* nm_nlh; } ;
struct TYPE_3__ {int nlmsg_len; } ;


 int NL_DBG (int,char*,struct nl_msg*,size_t) ;
 struct nl_msg* calloc (int,int) ;
 int free (struct nl_msg*) ;
 TYPE_1__* malloc (size_t) ;
 int memset (TYPE_1__*,int ,int) ;
 int nlmsg_total_size (int ) ;

__attribute__((used)) static struct nl_msg *__nlmsg_alloc(size_t len)
{
 struct nl_msg *nm;

 nm = calloc(1, sizeof(*nm));
 if (!nm)
  goto errout;

 nm->nm_refcnt = 1;

 nm->nm_nlh = malloc(len);
 if (!nm->nm_nlh)
  goto errout;

 memset(nm->nm_nlh, 0, sizeof(struct nlmsghdr));

 nm->nm_protocol = -1;
 nm->nm_size = len;
 nm->nm_nlh->nlmsg_len = nlmsg_total_size(0);

 NL_DBG(2, "msg %p: Allocated new message, maxlen=%zu\n", nm, len);

 return nm;
errout:
 free(nm);
 return ((void*)0);
}
