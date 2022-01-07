
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct crlf_attrs {scalar_t__ crlf_action; } ;
typedef int git_filter_source ;
struct TYPE_4__ {int crlf; } ;
typedef TYPE_1__ git_buf_text_stats ;
typedef int git_buf ;


 scalar_t__ GIT_CRLF_AUTO ;
 scalar_t__ GIT_CRLF_AUTO_CRLF ;
 scalar_t__ GIT_CRLF_AUTO_INPUT ;
 scalar_t__ GIT_CRLF_BINARY ;
 int GIT_PASSTHROUGH ;
 int check_safecrlf (struct crlf_attrs*,int const*,TYPE_1__*) ;
 int git_buf_len (int const*) ;
 int git_buf_text_crlf_to_lf (int *,int const*) ;
 int git_buf_text_gather_stats (TYPE_1__*,int const*,int) ;
 scalar_t__ has_cr_in_index (int const*) ;

__attribute__((used)) static int crlf_apply_to_odb(
 struct crlf_attrs *ca,
 git_buf *to,
 const git_buf *from,
 const git_filter_source *src)
{
 git_buf_text_stats stats;
 bool is_binary;
 int error;


 if (ca->crlf_action == GIT_CRLF_BINARY || !git_buf_len(from))
  return GIT_PASSTHROUGH;

 is_binary = git_buf_text_gather_stats(&stats, from, 0);




 if (ca->crlf_action == GIT_CRLF_AUTO ||
  ca->crlf_action == GIT_CRLF_AUTO_INPUT ||
  ca->crlf_action == GIT_CRLF_AUTO_CRLF) {

  if (is_binary)
   return GIT_PASSTHROUGH;





  if (has_cr_in_index(src))
   return GIT_PASSTHROUGH;
 }

 if ((error = check_safecrlf(ca, src, &stats)) < 0)
  return error;


 if (!stats.crlf)
  return GIT_PASSTHROUGH;


 return git_buf_text_crlf_to_lf(to, from);
}
