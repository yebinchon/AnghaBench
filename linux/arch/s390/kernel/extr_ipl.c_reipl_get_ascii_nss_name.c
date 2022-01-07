
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nss_name; } ;
struct ipl_parameter_block {TYPE_1__ ccw; } ;


 int EBCASC (char*,size_t) ;
 size_t NSS_NAME_SIZE ;
 int memcpy (char*,int ,size_t) ;

__attribute__((used)) static void reipl_get_ascii_nss_name(char *dst,
         struct ipl_parameter_block *ipb)
{
 memcpy(dst, ipb->ccw.nss_name, NSS_NAME_SIZE);
 EBCASC(dst, NSS_NAME_SIZE);
 dst[NSS_NAME_SIZE] = 0;
}
