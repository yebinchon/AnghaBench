
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diag204_x_info_blk_hdr {int flags; } ;
struct diag204_info_blk_hdr {int flags; } ;
typedef enum diag204_format { ____Placeholder_diag204_format } diag204_format ;
typedef int __u8 ;


 int DIAG204_INFO_SIMPLE ;

__attribute__((used)) static inline __u8 info_blk_hdr__flags(enum diag204_format type, void *hdr)
{
 if (type == DIAG204_INFO_SIMPLE)
  return ((struct diag204_info_blk_hdr *)hdr)->flags;
 else
  return ((struct diag204_x_info_blk_hdr *)hdr)->flags;
}
