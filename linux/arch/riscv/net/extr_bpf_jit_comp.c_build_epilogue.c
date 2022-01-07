
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv_jit_context {int dummy; } ;


 int RV_REG_RA ;
 int __build_epilogue (int ,struct rv_jit_context*) ;

__attribute__((used)) static void build_epilogue(struct rv_jit_context *ctx)
{
 __build_epilogue(RV_REG_RA, ctx);
}
