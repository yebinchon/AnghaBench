
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int new_prefix; int old_prefix; int id_abbrev; int flags; } ;
struct TYPE_10__ {int repo; TYPE_1__ diff_opts; } ;
typedef TYPE_2__ git_patch ;
typedef int git_diff_line_cb ;
typedef int git_diff_format_t ;
typedef int git_buf ;
struct TYPE_11__ {int new_prefix; int old_prefix; int id_strlen; int flags; } ;
typedef TYPE_3__ diff_print_info ;


 int assert (TYPE_2__*) ;
 int diff_print_info_init__common (TYPE_3__*,int *,int ,int ,int ,void*) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static int diff_print_info_init_frompatch(
 diff_print_info *pi,
 git_buf *out,
 git_patch *patch,
 git_diff_format_t format,
 git_diff_line_cb cb,
 void *payload)
{
 assert(patch);

 memset(pi, 0, sizeof(diff_print_info));

 pi->flags = patch->diff_opts.flags;
 pi->id_strlen = patch->diff_opts.id_abbrev;
 pi->old_prefix = patch->diff_opts.old_prefix;
 pi->new_prefix = patch->diff_opts.new_prefix;

 return diff_print_info_init__common(pi, out, patch->repo, format, cb, payload);
}
