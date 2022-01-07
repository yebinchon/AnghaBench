
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int FW_FEATURE_LPAR ;
 int H_GET_EM_PARMS ;
 scalar_t__ H_SUCCESS ;
 int PLPAR_HCALL_BUFSIZE ;
 scalar_t__ firmware_has_feature (int ) ;
 scalar_t__ plpar_hcall (int ,unsigned long*) ;
 int seq_printf (struct seq_file*,char*,unsigned long) ;

__attribute__((used)) static void parse_em_data(struct seq_file *m)
{
 unsigned long retbuf[PLPAR_HCALL_BUFSIZE];

 if (firmware_has_feature(FW_FEATURE_LPAR) &&
     plpar_hcall(H_GET_EM_PARMS, retbuf) == H_SUCCESS)
  seq_printf(m, "power_mode_data=%016lx\n", retbuf[0]);
}
