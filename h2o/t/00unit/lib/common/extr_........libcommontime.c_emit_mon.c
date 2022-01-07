
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static char *emit_mon(char *dst, int mon)
{
    memcpy(dst, ("JanFebMarAprMayJunJulAugSepOctNovDec") + mon * 3, 3);
    return dst + 3;
}
