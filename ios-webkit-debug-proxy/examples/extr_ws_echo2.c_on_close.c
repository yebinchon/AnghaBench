
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sm_t ;
typedef int sm_status ;
typedef int my_t ;


 int SM_SUCCESS ;
 int my_free (int ) ;

sm_status on_close(sm_t sm, int fd, void *value, bool is_server) {
  if (!is_server) {
    my_free((my_t)value);
  }
  return SM_SUCCESS;
}
