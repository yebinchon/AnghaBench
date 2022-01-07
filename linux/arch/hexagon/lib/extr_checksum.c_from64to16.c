
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int HEXAGON_P_vrmpyh_PP (int,int ) ;
 scalar_t__ VR_CARRY (int ,int ,int,int ) ;
 int VR_NEGATE (int,int,int,int) ;
 int VR_SELECT (int,int,int,int) ;

__attribute__((used)) static inline unsigned short from64to16(u64 x)
{
 u64 sum;

 sum = HEXAGON_P_vrmpyh_PP(x^VR_NEGATE(1, 1, 1, 1),
        VR_SELECT(1, 1, 1, 1));
 sum += VR_CARRY(0, 0, 1, 0);
 sum = HEXAGON_P_vrmpyh_PP(sum, VR_SELECT(0, 0, 1, 1));

 return 0xFFFF & sum;
}
