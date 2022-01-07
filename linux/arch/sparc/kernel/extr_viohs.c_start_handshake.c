
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vio_driver_state {TYPE_1__* ver_table; int hs_state; } ;
struct TYPE_2__ {int minor; int major; } ;


 int HS ;
 int VIO_HS_INVALID ;
 int send_version (struct vio_driver_state*,int ,int ) ;
 int viodbg (int ,char*) ;

__attribute__((used)) static int start_handshake(struct vio_driver_state *vio)
{
 int err;

 viodbg(HS, "START HANDSHAKE\n");

 vio->hs_state = VIO_HS_INVALID;

 err = send_version(vio,
      vio->ver_table[0].major,
      vio->ver_table[0].minor);
 if (err < 0)
  return err;

 return 0;
}
