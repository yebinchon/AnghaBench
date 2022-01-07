
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int int64_t ;
struct TYPE_3__ {int parse_ctx; } ;
typedef TYPE_1__ git_patch_parse_ctx ;


 scalar_t__ git_parse_advance_digit (int*,int *,int) ;
 scalar_t__ git_parse_advance_expected_str (int *,char*) ;

__attribute__((used)) static int parse_header_percent(uint16_t *out, git_patch_parse_ctx *ctx)
{
 int64_t val;

 if (git_parse_advance_digit(&val, &ctx->parse_ctx, 10) < 0)
  return -1;

 if (git_parse_advance_expected_str(&ctx->parse_ctx, "%") < 0)
  return -1;

 if (val < 0 || val > 100)
  return -1;

 *out = (uint16_t)val;
 return 0;
}
