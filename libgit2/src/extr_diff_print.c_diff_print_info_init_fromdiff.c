
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_diff_line_cb ;
typedef int git_diff_format_t ;
struct TYPE_8__ {int new_prefix; int old_prefix; int id_abbrev; int flags; } ;
struct TYPE_9__ {int strcomp; TYPE_1__ opts; int * repo; } ;
typedef TYPE_2__ git_diff ;
typedef int git_buf ;
struct TYPE_10__ {int strcomp; int new_prefix; int old_prefix; int id_strlen; int flags; } ;
typedef TYPE_3__ diff_print_info ;


 int diff_print_info_init__common (TYPE_3__*,int *,int *,int ,int ,void*) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static int diff_print_info_init_fromdiff(
 diff_print_info *pi,
 git_buf *out,
 git_diff *diff,
 git_diff_format_t format,
 git_diff_line_cb cb,
 void *payload)
{
 git_repository *repo = diff ? diff->repo : ((void*)0);

 memset(pi, 0, sizeof(diff_print_info));

 if (diff) {
  pi->flags = diff->opts.flags;
  pi->id_strlen = diff->opts.id_abbrev;
  pi->old_prefix = diff->opts.old_prefix;
  pi->new_prefix = diff->opts.new_prefix;

  pi->strcomp = diff->strcomp;
 }

 return diff_print_info_init__common(pi, out, repo, format, cb, payload);
}
