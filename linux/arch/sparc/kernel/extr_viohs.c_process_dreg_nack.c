
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_driver_state {int dummy; } ;
struct vio_dring_register {int num_cookies; int options; int descr_size; int num_descr; scalar_t__ dring_ident; } ;


 int HS ;
 int handshake_failure (struct vio_driver_state*) ;
 int viodbg (int ,char*,unsigned long long,int ,int ,int ,int ) ;

__attribute__((used)) static int process_dreg_nack(struct vio_driver_state *vio,
        struct vio_dring_register *pkt)
{
 viodbg(HS, "GOT DRING_REG NACK ident[%llx] "
        "ndesc[%u] dsz[%u] opt[0x%x] ncookies[%u]\n",
        (unsigned long long) pkt->dring_ident,
        pkt->num_descr, pkt->descr_size, pkt->options,
        pkt->num_cookies);

 return handshake_failure(vio);
}
