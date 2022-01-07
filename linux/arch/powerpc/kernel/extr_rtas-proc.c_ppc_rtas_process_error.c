
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *ppc_rtas_process_error(int error)
{
 switch (error) {
  case 136:
   return "(critical high)";
  case 129:
   return "(warning high)";
  case 132:
   return "(normal)";
  case 128:
   return "(warning low)";
  case 135:
   return "(critical low)";
  case 130:
   return "(read ok)";
  case 133:
   return "(hardware error)";
  case 137:
   return "(busy)";
  case 131:
   return "(non existent)";
  case 134:
   return "(dr entity removed)";
  default:
   return "(UNKNOWN)";
 }
}
