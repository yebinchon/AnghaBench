
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_classifier_instance {int sock; int stop; } ;


 int nl_classifier_exit (struct nl_classifier_instance*) ;
 int nl_classifier_init (struct nl_classifier_instance*) ;
 int nl_classifier_offload (struct nl_classifier_instance*,unsigned char,unsigned long*,unsigned long*,unsigned short,unsigned short,int) ;
 int nl_classifier_parse_arg (int,char**,unsigned char*,unsigned long*,unsigned long*,unsigned short*,unsigned short*,int*) ;
 struct nl_classifier_instance nl_cls_inst ;
 int nl_recvmsgs_default (int ) ;
 int printf (char*) ;

int main(int argc, char *argv[])
{
 struct nl_classifier_instance *inst = &nl_cls_inst;
 unsigned char proto;
 unsigned long src_addr[4];
 unsigned long dst_addr[4];
 unsigned short sport;
 unsigned short dport;
 int af;
 int ret;

 ret = nl_classifier_parse_arg(argc, argv, &proto, src_addr, dst_addr, &sport, &dport, &af);
 if (ret < 0) {
  printf("Failed to parse arguments\n");
  return ret;
 }

 ret = nl_classifier_init(inst);
 if (ret < 0) {
  printf("Unable to init generic netlink\n");
  return ret;
 }

 nl_classifier_offload(inst, proto, src_addr, dst_addr, sport, dport, af);


 while (!inst->stop) {
  nl_recvmsgs_default(inst->sock);
 }

 nl_classifier_exit(inst);

 return 0;
}
