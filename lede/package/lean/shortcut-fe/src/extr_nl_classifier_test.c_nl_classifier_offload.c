
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_msg {int dummy; } ;
struct nl_classifier_tuple {int af; unsigned char proto; unsigned short sport; unsigned short dport; int dst_ip; int src_ip; } ;
struct nl_classifier_instance {int sock; int family_id; } ;
typedef int classifier_msg ;


 int AF_INET ;
 int NLM_F_REQUEST ;
 int NL_AUTO_PID ;
 int NL_AUTO_SEQ ;
 int NL_CLASSIFIER_ATTR_TUPLE ;
 int NL_CLASSIFIER_CMD_ACCEL ;
 int NL_CLASSIFIER_GENL_HDRSIZE ;
 int NL_CLASSIFIER_GENL_VERSION ;
 int genlmsg_put (struct nl_msg*,int ,int ,int ,int ,int ,int ,int ) ;
 int memcpy (int *,unsigned long*,int) ;
 int memset (struct nl_classifier_tuple*,int ,int) ;
 int nl_send_auto (int ,struct nl_msg*) ;
 int nla_put (struct nl_msg*,int ,int,struct nl_classifier_tuple*) ;
 struct nl_msg* nlmsg_alloc () ;
 int nlmsg_free (struct nl_msg*) ;
 int printf (char*) ;

void nl_classifier_offload(struct nl_classifier_instance *inst,
      unsigned char proto, unsigned long *src_saddr,
      unsigned long *dst_saddr, unsigned short sport,
      unsigned short dport, int af)
{
 struct nl_msg *msg;
 int ret;
 struct nl_classifier_tuple classifier_msg;

 memset(&classifier_msg, 0, sizeof(classifier_msg));
 classifier_msg.af = af;
 classifier_msg.proto = proto;
 memcpy(&classifier_msg.src_ip, src_saddr, (af == AF_INET ? 4 : 16));
 memcpy(&classifier_msg.dst_ip, dst_saddr, (af == AF_INET ? 4 : 16));
 classifier_msg.sport = sport;
 classifier_msg.dport = dport;

 msg = nlmsg_alloc();
 if (!msg) {
  printf("Unable to allocate message\n");
  return;
 }

 genlmsg_put(msg, NL_AUTO_PID, NL_AUTO_SEQ, inst->family_id,
      NL_CLASSIFIER_GENL_HDRSIZE, NLM_F_REQUEST,
      NL_CLASSIFIER_CMD_ACCEL, NL_CLASSIFIER_GENL_VERSION);
 nla_put(msg, NL_CLASSIFIER_ATTR_TUPLE, sizeof(classifier_msg), &classifier_msg);

 ret = nl_send_auto(inst->sock, msg);
 if (ret < 0) {
  printf("send netlink message failed.\n");
  nlmsg_free(msg);
  return;
 }

 nlmsg_free(msg);
 printf("nl classifier offload connection successful\n");
}
