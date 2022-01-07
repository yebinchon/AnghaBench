
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int filelen; scalar_t__ fileofs; } ;
typedef TYPE_1__ lump_t ;


 int Com_BlockChecksum (scalar_t__,int ) ;
 int LittleLong (int ) ;
 scalar_t__ cmod_base ;

unsigned CM_LumpChecksum(lump_t *lump) {
 return LittleLong (Com_BlockChecksum (cmod_base + lump->fileofs, lump->filelen));
}
