
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int lease_finish () ;
 int lease_off () ;
 int lease_on () ;
 int lease_start () ;
 int lease_state ;





void run_rpc_lease (void) {
  int run_flag = 1;
  while (run_flag) {
    run_flag = 0;
    switch (lease_state) {
      case 130:
        run_flag = lease_off();
        break;
      case 128:
        run_flag = lease_start();
        break;
      case 129:
        run_flag = lease_on();
        break;
      case 131:
        run_flag = lease_finish();
        break;
      default:
        assert (0);
    }
  }
}
