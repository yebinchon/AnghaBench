
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kvmppc_hcall_impl_hv_realmode (unsigned long) ;

__attribute__((used)) static int kvmppc_hcall_impl_hv(unsigned long cmd)
{
 switch (cmd) {
 case 141:
 case 132:
 case 140:
 case 131:
 case 130:
 case 135:
 case 134:
 case 133:
  return 1;
 }


 return kvmppc_hcall_impl_hv_realmode(cmd);
}
