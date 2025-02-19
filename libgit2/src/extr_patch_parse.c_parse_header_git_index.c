
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef void* uint16_t ;
struct TYPE_14__ {TYPE_3__* delta; } ;
struct TYPE_15__ {TYPE_4__ base; } ;
typedef TYPE_5__ git_patch_parsed ;
struct TYPE_16__ {int parse_ctx; } ;
typedef TYPE_6__ git_patch_parse_ctx ;
struct TYPE_12__ {void* mode; int id_abbrev; int id; } ;
struct TYPE_11__ {void* mode; int id_abbrev; int id; } ;
struct TYPE_13__ {TYPE_2__ old_file; TYPE_1__ new_file; } ;


 int git_parse_advance_chars (int *,int) ;
 scalar_t__ git_parse_advance_expected_str (int *,char*) ;
 scalar_t__ git_parse_peek (char*,int *,int ) ;
 scalar_t__ parse_header_mode (void**,TYPE_6__*) ;
 scalar_t__ parse_header_oid (int *,int *,TYPE_6__*) ;

__attribute__((used)) static int parse_header_git_index(
 git_patch_parsed *patch, git_patch_parse_ctx *ctx)
{
 char c;

 if (parse_header_oid(&patch->base.delta->old_file.id,
   &patch->base.delta->old_file.id_abbrev, ctx) < 0 ||
  git_parse_advance_expected_str(&ctx->parse_ctx, "..") < 0 ||
  parse_header_oid(&patch->base.delta->new_file.id,
   &patch->base.delta->new_file.id_abbrev, ctx) < 0)
  return -1;

 if (git_parse_peek(&c, &ctx->parse_ctx, 0) == 0 && c == ' ') {
  uint16_t mode;

  git_parse_advance_chars(&ctx->parse_ctx, 1);

  if (parse_header_mode(&mode, ctx) < 0)
   return -1;

  if (!patch->base.delta->new_file.mode)
   patch->base.delta->new_file.mode = mode;

  if (!patch->base.delta->old_file.mode)
   patch->base.delta->old_file.mode = mode;
 }

 return 0;
}
