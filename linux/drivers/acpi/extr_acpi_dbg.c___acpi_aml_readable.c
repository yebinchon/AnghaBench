
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct circ_buf {int dummy; } ;
struct TYPE_2__ {unsigned long flags; } ;


 TYPE_1__ acpi_aml_io ;
 scalar_t__ circ_count (struct circ_buf*) ;

__attribute__((used)) static inline bool __acpi_aml_readable(struct circ_buf *circ, unsigned long flag)
{




 if (!(acpi_aml_io.flags & flag) && circ_count(circ))
  return 1;
 return 0;
}
