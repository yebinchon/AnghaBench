
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_parse_ctx ;
typedef int git_buf ;


 scalar_t__ advance_until (char const**,size_t*,int *,char) ;
 int git_buf_attach_notowned (int *,char const*,size_t) ;
 int git_buf_clear (int *) ;
 int git_buf_rtrim (int *) ;
 int git_parse_advance_ws (int *) ;
 scalar_t__ is_eol (int *) ;

__attribute__((used)) static int parse_mailmap_entry(
 git_buf *real_name, git_buf *real_email,
 git_buf *replace_name, git_buf *replace_email,
 git_parse_ctx *ctx)
{
 const char *start;
 size_t len;

 git_buf_clear(real_name);
 git_buf_clear(real_email);
 git_buf_clear(replace_name);
 git_buf_clear(replace_email);

 git_parse_advance_ws(ctx);
 if (is_eol(ctx))
  return -1;


 if (advance_until(&start, &len, ctx, '<') < 0)
  return -1;

 git_buf_attach_notowned(real_name, start, len);
 git_buf_rtrim(real_name);





 if (advance_until(&start, &len, ctx, '>') < 0)
  return -1;


 if (!is_eol(ctx)) {
  git_buf_attach_notowned(real_email, start, len);

  git_parse_advance_ws(ctx);
  if (advance_until(&start, &len, ctx, '<') < 0)
   return -1;
  git_buf_attach_notowned(replace_name, start, len);
  git_buf_rtrim(replace_name);

  if (advance_until(&start, &len, ctx, '>') < 0)
   return -1;
 }

 git_buf_attach_notowned(replace_email, start, len);

 if (!is_eol(ctx))
  return -1;

 return 0;
}
