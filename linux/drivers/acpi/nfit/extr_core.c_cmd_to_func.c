
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfit_mem {scalar_t__ family; } ;
struct nd_cmd_pkg {scalar_t__ nd_family; int nd_command; scalar_t__* nd_reserved2; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int EINVAL ;
 int ENOTTY ;
 scalar_t__ NVDIMM_FAMILY_INTEL ;

__attribute__((used)) static int cmd_to_func(struct nfit_mem *nfit_mem, unsigned int cmd,
  struct nd_cmd_pkg *call_pkg)
{
 if (call_pkg) {
  int i;

  if (nfit_mem && nfit_mem->family != call_pkg->nd_family)
   return -ENOTTY;

  for (i = 0; i < ARRAY_SIZE(call_pkg->nd_reserved2); i++)
   if (call_pkg->nd_reserved2[i])
    return -EINVAL;
  return call_pkg->nd_command;
 }


 if (!nfit_mem)
  return cmd;


 if (nfit_mem->family == NVDIMM_FAMILY_INTEL)
  return cmd;





 return 0;
}
