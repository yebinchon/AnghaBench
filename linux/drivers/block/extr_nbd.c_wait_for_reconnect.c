
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbd_device {struct nbd_config* config; } ;
struct nbd_config {int dead_conn_timeout; int live_connections; int conn_wait; int runtime_flags; } ;


 int NBD_RT_DISCONNECTED ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int wait_for_reconnect(struct nbd_device *nbd)
{
 struct nbd_config *config = nbd->config;
 if (!config->dead_conn_timeout)
  return 0;
 if (test_bit(NBD_RT_DISCONNECTED, &config->runtime_flags))
  return 0;
 return wait_event_timeout(config->conn_wait,
      atomic_read(&config->live_connections) > 0,
      config->dead_conn_timeout) > 0;
}
