
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
struct socket {int dummy; } ;


 int SOL_TCP ;
 int TCP_QUICKACK ;
 int kernel_setsockopt (struct socket*,int ,int ,char*,int) ;

__attribute__((used)) static inline void drbd_tcp_quickack(struct socket *sock)
{
 int val = 2;
 (void) kernel_setsockopt(sock, SOL_TCP, TCP_QUICKACK,
   (char*)&val, sizeof(val));
}
