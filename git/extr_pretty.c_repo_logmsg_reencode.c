
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct commit {int dummy; } ;


 int free (char*) ;
 char const* get_cached_commit_buffer (struct repository*,struct commit const*,int *) ;
 char* get_header (char const*,char*) ;
 char* reencode_string (char const*,char const*,char const*) ;
 char* replace_encoding_header (char*,char const*) ;
 char* repo_get_commit_buffer (struct repository*,struct commit const*,int *) ;
 int repo_unuse_commit_buffer (struct repository*,struct commit const*,char const*) ;
 scalar_t__ same_encoding (char const*,char const*) ;
 char* xstrdup (char const*) ;

const char *repo_logmsg_reencode(struct repository *r,
     const struct commit *commit,
     char **commit_encoding,
     const char *output_encoding)
{
 static const char *utf8 = "UTF-8";
 const char *use_encoding;
 char *encoding;
 const char *msg = repo_get_commit_buffer(r, commit, ((void*)0));
 char *out;

 if (!output_encoding || !*output_encoding) {
  if (commit_encoding)
   *commit_encoding = get_header(msg, "encoding");
  return msg;
 }
 encoding = get_header(msg, "encoding");
 if (commit_encoding)
  *commit_encoding = encoding;
 use_encoding = encoding ? encoding : utf8;
 if (same_encoding(use_encoding, output_encoding)) {





  if (!encoding)
   return msg;
  if (msg == get_cached_commit_buffer(r, commit, ((void*)0)))
   out = xstrdup(msg);
  else
   out = (char *)msg;
 }
 else {






  out = reencode_string(msg, output_encoding, use_encoding);
  if (out)
   repo_unuse_commit_buffer(r, commit, msg);
 }





 if (out)
  out = replace_encoding_header(out, output_encoding);

 if (!commit_encoding)
  free(encoding);




 return out ? out : msg;
}
