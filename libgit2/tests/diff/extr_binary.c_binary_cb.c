
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct diff_data {int new_binary_type; int new_binary_inflatedlen; int new_binary_base85; int old_binary_type; int old_binary_inflatedlen; int old_binary_base85; } ;
typedef int git_diff_delta ;
struct TYPE_6__ {int type; int inflatedlen; int datalen; int data; } ;
struct TYPE_5__ {int type; int inflatedlen; int datalen; int data; } ;
struct TYPE_7__ {TYPE_2__ new_file; TYPE_1__ old_file; } ;
typedef TYPE_3__ git_diff_binary ;


 int GIT_UNUSED (int const*) ;
 int git_buf_encode_base85 (int *,int ,int ) ;

__attribute__((used)) static int binary_cb(
 const git_diff_delta *delta,
 const git_diff_binary *binary,
 void *payload)
{
 struct diff_data *diff_data = payload;

 GIT_UNUSED(delta);

 git_buf_encode_base85(&diff_data->old_binary_base85,
  binary->old_file.data, binary->old_file.datalen);
 diff_data->old_binary_inflatedlen = binary->old_file.inflatedlen;
 diff_data->old_binary_type = binary->old_file.type;

 git_buf_encode_base85(&diff_data->new_binary_base85,
  binary->new_file.data, binary->new_file.datalen);
 diff_data->new_binary_inflatedlen = binary->new_file.inflatedlen;
 diff_data->new_binary_type = binary->new_file.type;

 return 0;
}
