
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdt_fs_context {int enable_cdpl3; int enable_cdpl2; int enable_mba_mbps; } ;
struct fs_parse_result {int dummy; } ;
struct fs_parameter {int dummy; } ;
struct fs_context {int dummy; } ;
struct TYPE_2__ {int x86_vendor; } ;


 int EINVAL ;



 int X86_VENDOR_INTEL ;
 TYPE_1__ boot_cpu_data ;
 int fs_parse (struct fs_context*,int *,struct fs_parameter*,struct fs_parse_result*) ;
 struct rdt_fs_context* rdt_fc2context (struct fs_context*) ;
 int rdt_fs_parameters ;

__attribute__((used)) static int rdt_parse_param(struct fs_context *fc, struct fs_parameter *param)
{
 struct rdt_fs_context *ctx = rdt_fc2context(fc);
 struct fs_parse_result result;
 int opt;

 opt = fs_parse(fc, &rdt_fs_parameters, param, &result);
 if (opt < 0)
  return opt;

 switch (opt) {
 case 130:
  ctx->enable_cdpl3 = 1;
  return 0;
 case 129:
  ctx->enable_cdpl2 = 1;
  return 0;
 case 128:
  if (boot_cpu_data.x86_vendor != X86_VENDOR_INTEL)
   return -EINVAL;
  ctx->enable_mba_mbps = 1;
  return 0;
 }

 return -EINVAL;
}
