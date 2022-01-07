
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_attr {void* description; void* name; void* type; void* id; struct switch_attr* next; int atype; int dev; } ;
struct nl_msg {int dummy; } ;
struct genlmsghdr {int dummy; } ;
struct attrlist_arg {struct switch_attr** head; struct switch_attr* prev; int atype; int dev; } ;


 int NL_SKIP ;
 scalar_t__ SWITCH_ATTR_MAX ;
 size_t SWITCH_ATTR_OP_DESCRIPTION ;
 size_t SWITCH_ATTR_OP_ID ;
 size_t SWITCH_ATTR_OP_NAME ;
 size_t SWITCH_ATTR_OP_TYPE ;
 int genlmsg_attrdata (struct genlmsghdr*,int ) ;
 int genlmsg_attrlen (struct genlmsghdr*,int ) ;
 int nla_get_string (scalar_t__) ;
 void* nla_get_u32 (scalar_t__) ;
 scalar_t__ nla_parse (scalar_t__*,scalar_t__,int ,int ,int *) ;
 struct genlmsghdr* nlmsg_data (int ) ;
 int nlmsg_hdr (struct nl_msg*) ;
 void* strdup (int ) ;
 struct switch_attr* swlib_alloc (int) ;
 scalar_t__* tb ;

__attribute__((used)) static int
add_attr(struct nl_msg *msg, void *ptr)
{
 struct genlmsghdr *gnlh = nlmsg_data(nlmsg_hdr(msg));
 struct attrlist_arg *arg = ptr;
 struct switch_attr *new;

 if (nla_parse(tb, SWITCH_ATTR_MAX - 1, genlmsg_attrdata(gnlh, 0),
   genlmsg_attrlen(gnlh, 0), ((void*)0)) < 0)
  goto done;

 new = swlib_alloc(sizeof(struct switch_attr));
 if (!new)
  goto done;

 new->dev = arg->dev;
 new->atype = arg->atype;
 if (arg->prev) {
  arg->prev->next = new;
 } else {
  arg->prev = *arg->head;
 }
 *arg->head = new;
 arg->head = &new->next;

 if (tb[SWITCH_ATTR_OP_ID])
  new->id = nla_get_u32(tb[SWITCH_ATTR_OP_ID]);
 if (tb[SWITCH_ATTR_OP_TYPE])
  new->type = nla_get_u32(tb[SWITCH_ATTR_OP_TYPE]);
 if (tb[SWITCH_ATTR_OP_NAME])
  new->name = strdup(nla_get_string(tb[SWITCH_ATTR_OP_NAME]));
 if (tb[SWITCH_ATTR_OP_DESCRIPTION])
  new->description = strdup(nla_get_string(tb[SWITCH_ATTR_OP_DESCRIPTION]));

done:
 return NL_SKIP;
}
