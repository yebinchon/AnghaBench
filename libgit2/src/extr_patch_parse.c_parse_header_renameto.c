
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* delta; } ;
struct TYPE_7__ {int rename_new_path; TYPE_2__ base; } ;
typedef TYPE_3__ git_patch_parsed ;
typedef int git_patch_parse_ctx ;
struct TYPE_5__ {int status; } ;


 int GIT_DELTA_RENAMED ;
 int parse_header_rename (int *,int *) ;

__attribute__((used)) static int parse_header_renameto(
 git_patch_parsed *patch, git_patch_parse_ctx *ctx)
{
 patch->base.delta->status = GIT_DELTA_RENAMED;
 return parse_header_rename(&patch->rename_new_path, ctx);
}
