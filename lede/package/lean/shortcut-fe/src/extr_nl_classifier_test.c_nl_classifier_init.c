
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_classifier_instance {scalar_t__ family_id; scalar_t__ group_id; int * sock; } ;


 int NL_CB_CUSTOM ;
 int NL_CB_VALID ;
 char* NL_CLASSIFIER_GENL_FAMILY ;
 char* NL_CLASSIFIER_GENL_GROUP ;
 int genl_connect (int *) ;
 scalar_t__ genl_ctrl_resolve (int *,char*) ;
 scalar_t__ genl_ctrl_resolve_grp (int *,char*,char*) ;
 int nl_classifier_msg_recv ;
 int nl_close (int *) ;
 int nl_socket_add_membership (int *,scalar_t__) ;
 int * nl_socket_alloc () ;
 int nl_socket_disable_seq_check (int *) ;
 int nl_socket_free (int *) ;
 int nl_socket_modify_cb (int *,int ,int ,int ,int *) ;
 int printf (char*,...) ;

int nl_classifier_init(struct nl_classifier_instance *inst)
{
 int ret;

 inst->sock = nl_socket_alloc();
 if (!inst->sock) {
  printf("Unable to allocation socket.\n");
  return -1;
 }
 genl_connect(inst->sock);

 inst->family_id = genl_ctrl_resolve(inst->sock, NL_CLASSIFIER_GENL_FAMILY);
 if (inst->family_id < 0) {
  printf("Unable to resolve family %s\n", NL_CLASSIFIER_GENL_FAMILY);
  goto init_failed;
 }

 inst->group_id = genl_ctrl_resolve_grp(inst->sock, NL_CLASSIFIER_GENL_FAMILY, NL_CLASSIFIER_GENL_GROUP);
 if (inst->group_id < 0) {
  printf("Unable to resolve mcast group %s\n", NL_CLASSIFIER_GENL_GROUP);
  goto init_failed;
 }

 ret = nl_socket_add_membership(inst->sock, inst->group_id);
 if (ret < 0) {
  printf("Unable to add membership\n");
  goto init_failed;
 }

 nl_socket_disable_seq_check(inst->sock);
 nl_socket_modify_cb(inst->sock, NL_CB_VALID, NL_CB_CUSTOM, nl_classifier_msg_recv, ((void*)0));

 printf("nl classifier init successful\n");
 return 0;

init_failed:
 if (inst->sock) {
  nl_close(inst->sock);
  nl_socket_free(inst->sock);
  inst->sock = ((void*)0);
 }
 return -1;
}
