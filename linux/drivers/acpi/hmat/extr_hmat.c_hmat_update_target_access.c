
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef void* u32 ;
struct TYPE_2__ {void* write_bandwidth; void* read_bandwidth; void* write_latency; void* read_latency; } ;
struct memory_target {TYPE_1__ hmem_attrs; } ;
__attribute__((used)) static void hmat_update_target_access(struct memory_target *target,
          u8 type, u32 value)
{
 switch (type) {
 case 132:
  target->hmem_attrs.read_latency = value;
  target->hmem_attrs.write_latency = value;
  break;
 case 130:
  target->hmem_attrs.read_latency = value;
  break;
 case 128:
  target->hmem_attrs.write_latency = value;
  break;
 case 133:
  target->hmem_attrs.read_bandwidth = value;
  target->hmem_attrs.write_bandwidth = value;
  break;
 case 131:
  target->hmem_attrs.read_bandwidth = value;
  break;
 case 129:
  target->hmem_attrs.write_bandwidth = value;
  break;
 default:
  break;
 }
}
