
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_diff_delta ;
typedef int git_diff_binary ;
struct TYPE_5__ {int content_len; int content; int origin; } ;
struct TYPE_4__ {char* old_prefix; char* new_prefix; int (* print_cb ) (int const*,int *,TYPE_2__*,int ) ;int payload; TYPE_2__ line; int buf; } ;
typedef TYPE_1__ diff_print_info ;


 char* DIFF_NEW_PREFIX_DEFAULT ;
 char* DIFF_OLD_PREFIX_DEFAULT ;
 int GIT_DIFF_LINE_BINARY ;
 int diff_print_patch_file_binary (TYPE_1__*,int *,char const*,char const*,int const*) ;
 int git_buf_clear (int ) ;
 int git_buf_cstr (int ) ;
 int git_buf_len (int ) ;
 int stub1 (int const*,int *,TYPE_2__*,int ) ;

__attribute__((used)) static int diff_print_patch_binary(
 const git_diff_delta *delta,
 const git_diff_binary *binary,
 void *data)
{
 diff_print_info *pi = data;
 const char *old_pfx =
  pi->old_prefix ? pi->old_prefix : DIFF_OLD_PREFIX_DEFAULT;
 const char *new_pfx =
  pi->new_prefix ? pi->new_prefix : DIFF_NEW_PREFIX_DEFAULT;
 int error;

 git_buf_clear(pi->buf);

 if ((error = diff_print_patch_file_binary(
  pi, (git_diff_delta *)delta, old_pfx, new_pfx, binary)) < 0)
  return error;

 pi->line.origin = GIT_DIFF_LINE_BINARY;
 pi->line.content = git_buf_cstr(pi->buf);
 pi->line.content_len = git_buf_len(pi->buf);

 return pi->print_cb(delta, ((void*)0), &pi->line, pi->payload);
}
