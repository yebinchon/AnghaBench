
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ status; } ;
typedef TYPE_4__ git_diff_delta ;
struct TYPE_16__ {int inflatedlen; int datalen; int data; int type; } ;
struct TYPE_15__ {int inflatedlen; int datalen; int data; int type; } ;
struct TYPE_19__ {TYPE_2__ old_file; TYPE_1__ new_file; int contains_data; } ;
typedef TYPE_5__ git_diff_binary ;
struct TYPE_17__ {int num_lines; } ;
struct TYPE_20__ {int flags; TYPE_3__ line; TYPE_7__* buf; } ;
typedef TYPE_6__ diff_print_info ;
struct TYPE_21__ {size_t size; } ;


 scalar_t__ GIT_DELTA_UNMODIFIED ;
 int GIT_DIFF_SHOW_BINARY ;
 int GIT_EBUFS ;
 int diff_print_patch_file_binary_noshow (TYPE_6__*,TYPE_4__*,char const*,char const*) ;
 int format_binary (TYPE_6__*,int ,int ,int ,int ) ;
 int git_buf_printf (TYPE_7__*,char*) ;
 int git_buf_truncate (TYPE_7__*,size_t) ;
 int git_error_clear () ;

__attribute__((used)) static int diff_print_patch_file_binary(
 diff_print_info *pi, git_diff_delta *delta,
 const char *old_pfx, const char *new_pfx,
 const git_diff_binary *binary)
{
 size_t pre_binary_size;
 int error;

 if (delta->status == GIT_DELTA_UNMODIFIED)
  return 0;

 if ((pi->flags & GIT_DIFF_SHOW_BINARY) == 0 || !binary->contains_data)
  return diff_print_patch_file_binary_noshow(
   pi, delta, old_pfx, new_pfx);

 pre_binary_size = pi->buf->size;
 git_buf_printf(pi->buf, "GIT binary patch\n");
 pi->line.num_lines++;

 if ((error = format_binary(pi, binary->new_file.type, binary->new_file.data,
  binary->new_file.datalen, binary->new_file.inflatedlen)) < 0 ||
  (error = format_binary(pi, binary->old_file.type, binary->old_file.data,
   binary->old_file.datalen, binary->old_file.inflatedlen)) < 0) {

  if (error == GIT_EBUFS) {
   git_error_clear();
   git_buf_truncate(pi->buf, pre_binary_size);

   return diff_print_patch_file_binary_noshow(
    pi, delta, old_pfx, new_pfx);
  }
 }

 pi->line.num_lines++;
 return error;
}
