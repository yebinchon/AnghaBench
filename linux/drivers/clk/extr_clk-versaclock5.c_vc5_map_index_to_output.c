
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum vc5_model { ____Placeholder_vc5_model } vc5_model ;
__attribute__((used)) static int vc5_map_index_to_output(const enum vc5_model model,
       const unsigned int n)
{
 switch (model) {
 case 130:
  return (n == 0) ? 0 : 3;
 case 132:
 case 131:
 case 129:
 case 128:
 default:
  return n;
 }
}
