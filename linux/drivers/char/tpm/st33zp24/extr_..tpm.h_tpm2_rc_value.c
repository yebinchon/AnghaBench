
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BIT (int) ;

__attribute__((used)) static inline u32 tpm2_rc_value(u32 rc)
{
 return (rc & BIT(7)) ? rc & 0xff : rc;
}
