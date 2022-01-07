
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct d0_opal_v200 {int baseComID; } ;


 int be16_to_cpu (int ) ;

__attribute__((used)) static u16 get_comid_v200(const void *data)
{
 const struct d0_opal_v200 *v200 = data;

 return be16_to_cpu(v200->baseComID);
}
