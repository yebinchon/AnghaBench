
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* Bq ;
 int Bq_W ;
 int EXPQ_SIZE ;
 int now ;

void store_expired_target (int ip_addr, int port) {
  int i = Bq_W++ & (EXPQ_SIZE - 1);
  Bq[i*3] = ip_addr;
  Bq[i*3+1] = port;
  Bq[i*3+2] = now;
}
