
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_security_ops {int dummy; } ;



 struct nvdimm_security_ops const* intel_security_ops ;

__attribute__((used)) static const struct nvdimm_security_ops *acpi_nfit_get_security_ops(int family)
{
 switch (family) {
 case 128:
  return intel_security_ops;
 default:
  return ((void*)0);
 }
}
