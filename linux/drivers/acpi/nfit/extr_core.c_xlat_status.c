
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvdimm {int dummy; } ;


 int xlat_bus_status (void*,unsigned int,int ) ;
 int xlat_nvdimm_status (struct nvdimm*,void*,unsigned int,int ) ;

__attribute__((used)) static int xlat_status(struct nvdimm *nvdimm, void *buf, unsigned int cmd,
  u32 status)
{
 if (!nvdimm)
  return xlat_bus_status(buf, cmd, status);
 return xlat_nvdimm_status(nvdimm, buf, cmd, status);
}
