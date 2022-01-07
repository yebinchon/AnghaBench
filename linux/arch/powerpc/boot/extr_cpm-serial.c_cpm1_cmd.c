
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpcr ;
 int cpm_cmd ;
 int in_be16 (int ) ;
 int out_be16 (int ,int) ;

__attribute__((used)) static void cpm1_cmd(int op)
{
 while (in_be16(cpcr) & 1)
  ;

 out_be16(cpcr, (op << 8) | cpm_cmd | 1);

 while (in_be16(cpcr) & 1)
  ;
}
