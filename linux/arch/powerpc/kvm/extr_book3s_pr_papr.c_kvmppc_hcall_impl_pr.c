
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int kvmppc_hcall_impl_pr(unsigned long cmd)
{
 switch (cmd) {
 case 140:
 case 131:
 case 134:
 case 143:
 case 133:
 case 132:
 case 130:
 case 142:
 case 136:
 case 135:
  return 1;
 }
 return 0;
}
