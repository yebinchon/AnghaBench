
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parse_ctx; } ;
typedef TYPE_1__ git_patch_parse_ctx ;
typedef scalar_t__ git_off_t ;


 int git__is_int (scalar_t__) ;
 scalar_t__ git_parse_advance_digit (scalar_t__*,int *,int) ;

__attribute__((used)) static int parse_int(int *out, git_patch_parse_ctx *ctx)
{
 git_off_t num;

 if (git_parse_advance_digit(&num, &ctx->parse_ctx, 10) < 0 || !git__is_int(num))
  return -1;

 *out = (int)num;
 return 0;
}
