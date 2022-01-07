
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int content_len; int content; } ;
typedef TYPE_1__ git_diff_line ;
struct TYPE_6__ {int header_len; int header; } ;
typedef TYPE_2__ git_diff_hunk ;
typedef int git_diff_delta ;
typedef int git_buf ;


 int GIT_UNUSED (int const*) ;
 scalar_t__ git_buf_oom (int *) ;
 int git_buf_put (int *,int ,int ) ;

__attribute__((used)) static int print_cb(
 const git_diff_delta *delta,
 const git_diff_hunk *hunk,
 const git_diff_line *line,
 void *payload)
{
 git_buf *buf = (git_buf *)payload;

 GIT_UNUSED(delta);

 if (hunk)
  git_buf_put(buf, hunk->header, hunk->header_len);

 if (line)
  git_buf_put(buf, line->content, line->content_len);

 return git_buf_oom(buf) ? -1 : 0;
}
