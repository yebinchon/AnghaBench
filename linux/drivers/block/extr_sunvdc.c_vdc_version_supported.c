
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ major; scalar_t__ minor; } ;
struct TYPE_4__ {TYPE_1__ ver; } ;
struct vdc_port {TYPE_2__ vio; } ;



__attribute__((used)) static inline int vdc_version_supported(struct vdc_port *port,
     u16 major, u16 minor)
{
 return port->vio.ver.major == major && port->vio.ver.minor >= minor;
}
