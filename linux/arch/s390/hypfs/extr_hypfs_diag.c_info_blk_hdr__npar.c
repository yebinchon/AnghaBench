
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diag204_x_info_blk_hdr {int npar; } ;
struct diag204_info_blk_hdr {int npar; } ;
typedef enum diag204_format { ____Placeholder_diag204_format } diag204_format ;
typedef int __u8 ;


 int DIAG204_INFO_SIMPLE ;

__attribute__((used)) static inline __u8 info_blk_hdr__npar(enum diag204_format type, void *hdr)
{
 if (type == DIAG204_INFO_SIMPLE)
  return ((struct diag204_info_blk_hdr *)hdr)->npar;
 else
  return ((struct diag204_x_info_blk_hdr *)hdr)->npar;
}
