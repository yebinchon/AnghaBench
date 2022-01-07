
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct d0_opal_v100 {int baseComID; } ;


 int be16_to_cpu (int ) ;

__attribute__((used)) static u16 get_comid_v100(const void *data)
{
 const struct d0_opal_v100 *v100 = data;

 return be16_to_cpu(v100->baseComID);
}
