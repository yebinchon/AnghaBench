
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd_device; } ;


 int ITYPE (int ) ;
 TYPE_1__* UDRS ;
 int * current_type ;

__attribute__((used)) static inline bool drive_no_geom(int drive)
{
 return !current_type[drive] && !ITYPE(UDRS->fd_device);
}
