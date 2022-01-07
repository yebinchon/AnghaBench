
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* content; size_t content_len; size_t content_offset; } ;
typedef TYPE_1__ git_diff_line ;



__attribute__((used)) static void patch_line_init(
 git_diff_line *out,
 const char *in,
 size_t in_len,
 size_t in_offset)
{
 out->content = in;
 out->content_len = in_len;
 out->content_offset = in_offset;
}
