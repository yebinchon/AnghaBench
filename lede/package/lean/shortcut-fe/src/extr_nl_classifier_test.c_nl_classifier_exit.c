
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_classifier_instance {int * sock; } ;


 int nl_close (int *) ;
 int nl_socket_free (int *) ;
 int printf (char*) ;

void nl_classifier_exit(struct nl_classifier_instance *inst)
{
 if (inst->sock) {
  nl_close(inst->sock);
  nl_socket_free(inst->sock);
  inst->sock = ((void*)0);
 }
 printf("nl classifier exit successful\n");
}
