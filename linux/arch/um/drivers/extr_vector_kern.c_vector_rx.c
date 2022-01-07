
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_private {int options; int dev; } ;


 int MAX_ITERATIONS ;
 int VECTOR_RX ;
 scalar_t__ net_ratelimit () ;
 int netdev_err (int ,char*,...) ;
 int vector_legacy_rx (struct vector_private*) ;
 int vector_mmsg_rx (struct vector_private*) ;

__attribute__((used)) static void vector_rx(struct vector_private *vp)
{
 int err;
 int iter = 0;

 if ((vp->options & VECTOR_RX) > 0)
  while (((err = vector_mmsg_rx(vp)) > 0) && (iter < MAX_ITERATIONS))
   iter++;
 else
  while (((err = vector_legacy_rx(vp)) > 0) && (iter < MAX_ITERATIONS))
   iter++;
 if ((err != 0) && net_ratelimit())
  netdev_err(vp->dev, "vector_rx: error(%d)\n", err);
 if (iter == MAX_ITERATIONS)
  netdev_err(vp->dev, "vector_rx: device stuck, remote end may have closed the connection\n");
}
