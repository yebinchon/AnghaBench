
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fast_classifier_close () ;
 scalar_t__ fast_classifier_init () ;
 int fast_classifier_ipv4_offload (char,int ,int ,int ,int ) ;
 int fast_classifier_listen_for_messages () ;
 int printf (char*) ;

int main(int argc, char *argv[])
{
 if (fast_classifier_init() < 0) {
  printf("Unable to init generic netlink\n");
  exit(1);
 }

 fast_classifier_ipv4_offload('a', 0, 0, 0, 0);


 fast_classifier_listen_for_messages();

 fast_classifier_close();

 return 0;
}
