
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ line_len; int line; } ;
typedef TYPE_1__ git_parse_ctx ;
typedef int git_oid ;


 scalar_t__ GIT_OID_HEXSZ ;
 scalar_t__ git_oid_fromstrn (int *,int ,scalar_t__) ;
 int git_parse_advance_chars (TYPE_1__*,scalar_t__) ;

int git_parse_advance_oid(git_oid *out, git_parse_ctx *ctx)
{
 if (ctx->line_len < GIT_OID_HEXSZ)
  return -1;
 if ((git_oid_fromstrn(out, ctx->line, GIT_OID_HEXSZ)) < 0)
  return -1;
 git_parse_advance_chars(ctx, GIT_OID_HEXSZ);
 return 0;
}
