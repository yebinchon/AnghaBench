
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpcr ;
 int cpm_cmd ;
 int in_be32 (int ) ;
 int out_be32 (int ,int) ;

__attribute__((used)) static void cpm2_cmd(int op)
{
 while (in_be32(cpcr) & 0x10000)
  ;

 out_be32(cpcr, op | cpm_cmd | 0x10000);

 while (in_be32(cpcr) & 0x10000)
  ;
}
