
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diag204_x_part_hdr {int dummy; } ;
struct diag204_part_hdr {int dummy; } ;
typedef enum diag204_format { ____Placeholder_diag204_format } diag204_format ;


 int DIAG204_INFO_SIMPLE ;

__attribute__((used)) static inline int part_hdr__size(enum diag204_format type)
{
 if (type == DIAG204_INFO_SIMPLE)
  return sizeof(struct diag204_part_hdr);
 else
  return sizeof(struct diag204_x_part_hdr);
}
