
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbd_config {int runtime_flags; } ;


 int NBD_RT_DISCONNECTED ;
 int NBD_RT_DISCONNECT_REQUESTED ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int nbd_disconnected(struct nbd_config *config)
{
 return test_bit(NBD_RT_DISCONNECTED, &config->runtime_flags) ||
  test_bit(NBD_RT_DISCONNECT_REQUESTED, &config->runtime_flags);
}
