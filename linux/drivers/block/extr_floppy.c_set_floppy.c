
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd_device; } ;


 int ITYPE (int ) ;
 TYPE_1__* UDRS ;
 scalar_t__ _floppy ;
 scalar_t__* current_type ;
 scalar_t__ floppy_type ;

__attribute__((used)) static void set_floppy(int drive)
{
 int type = ITYPE(UDRS->fd_device);

 if (type)
  _floppy = floppy_type + type;
 else
  _floppy = current_type[drive];
}
