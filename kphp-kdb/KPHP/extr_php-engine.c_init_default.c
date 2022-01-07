
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {short port; } ;


 int MAX_CONNECTIONS ;
 TYPE_1__ PID ;
 int aes_load_pwd_file (int *) ;
 scalar_t__ change_user (char*) ;
 int dl_set_default_handlers () ;
 int dynamic_data_buffer_size ;
 int exit (int) ;
 scalar_t__ geteuid () ;
 int getpid () ;
 int init_dyn_data () ;
 int maxconn ;
 int now ;
 int pid ;
 scalar_t__ raise_file_rlimit (int) ;
 scalar_t__ rpc_port ;
 scalar_t__ time (int *) ;
 char* username ;
 int vkprintf (int,char*,...) ;

void init_default() {
  dl_set_default_handlers();
  now = (int)time (((void*)0));

  pid = getpid();

  PID.port = (short)rpc_port;

  dynamic_data_buffer_size = (1 << 26);
  init_dyn_data();

  if (!username && maxconn == MAX_CONNECTIONS && geteuid()) {
    maxconn = 1000;
  }

  if (raise_file_rlimit (maxconn + 16) < 0) {
    vkprintf (-1, "fatal: cannot raise open file limit to %d\n", maxconn + 16);
    exit (1);
  }

  aes_load_pwd_file (((void*)0));

  if (change_user (username) < 0) {
    vkprintf (-1, "fatal: cannot change user to %s\n", username ? username : "(none)");
    exit (1);
  }
}
