
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_path_iconv_t ;
typedef int git_buf ;


 int GIT_EINVALIDSPEC ;
 int GIT_ERROR_REFERENCE ;
 int GIT_PATH_ICONV_INIT ;
 unsigned int GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL ;
 unsigned int GIT_REFERENCE_FORMAT_REFSPEC_PATTERN ;
 unsigned int GIT_REFERENCE_FORMAT_REFSPEC_SHORTHAND ;
 unsigned int GIT_REFERENCE_FORMAT__PRECOMPOSE_UNICODE ;
 unsigned int GIT_REFERENCE_FORMAT__VALIDATION_DISABLE ;
 int assert (char const*) ;
 int ensure_segment_validity (char const*,char) ;
 int git_buf_clear (int *) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_joinpath (int *,int ,char const*) ;
 size_t git_buf_len (int *) ;
 scalar_t__ git_buf_oom (int *) ;
 int git_buf_sets (int *,char const*) ;
 int git_buf_truncate (int *,size_t) ;
 int git_error_set (int ,char*,char const*) ;
 int git_path_iconv (int *,char const**,size_t*) ;
 int git_path_iconv_clear (int *) ;
 int git_path_iconv_init_precompose (int *) ;
 scalar_t__ is_all_caps_and_underscore (char const*,...) ;
 scalar_t__ memchr (char const*,char,int) ;
 char const* strchr (char const*,char) ;
 int strcmp (char*,char const*) ;
 size_t strlen (char const*) ;

int git_reference__normalize_name(
 git_buf *buf,
 const char *name,
 unsigned int flags)
{
 const char *current;
 int segment_len, segments_count = 0, error = GIT_EINVALIDSPEC;
 unsigned int process_flags;
 bool normalize = (buf != ((void*)0));
 bool validate = (flags & GIT_REFERENCE_FORMAT__VALIDATION_DISABLE) == 0;





 assert(name);

 process_flags = flags;
 current = (char *)name;

 if (validate && *current == '/')
  goto cleanup;

 if (normalize)
  git_buf_clear(buf);
 if (!validate) {
  git_buf_sets(buf, current);

  error = git_buf_oom(buf) ? -1 : 0;
  goto cleanup;
 }

 while (1) {
  char may_contain_glob = process_flags & GIT_REFERENCE_FORMAT_REFSPEC_PATTERN;

  segment_len = ensure_segment_validity(current, may_contain_glob);
  if (segment_len < 0)
   goto cleanup;

  if (segment_len > 0) {




   if (memchr(current, '*', segment_len))
    process_flags &= ~GIT_REFERENCE_FORMAT_REFSPEC_PATTERN;

   if (normalize) {
    size_t cur_len = git_buf_len(buf);

    git_buf_joinpath(buf, git_buf_cstr(buf), current);
    git_buf_truncate(buf,
     cur_len + segment_len + (segments_count ? 1 : 0));

    if (git_buf_oom(buf)) {
     error = -1;
     goto cleanup;
    }
   }

   segments_count++;
  }


  if (segment_len == 0 && !normalize)
   goto cleanup;

  if (current[segment_len] == '\0')
   break;

  current += segment_len + 1;
 }


 if (segment_len == 0 && segments_count == 0)
  goto cleanup;


 if (current[segment_len - 1] == '.')
  goto cleanup;


 if (current[segment_len - 1] == '/')
  goto cleanup;

 if ((segments_count == 1 ) && !(flags & GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL))
  goto cleanup;

 if ((segments_count == 1 ) &&
     !(flags & GIT_REFERENCE_FORMAT_REFSPEC_SHORTHAND) &&
  !(is_all_caps_and_underscore(name, (size_t)segment_len) ||
   ((flags & GIT_REFERENCE_FORMAT_REFSPEC_PATTERN) && !strcmp("*", name))))
   goto cleanup;

 if ((segments_count > 1)
  && (is_all_caps_and_underscore(name, strchr(name, '/') - name)))
   goto cleanup;

 error = 0;

cleanup:
 if (error == GIT_EINVALIDSPEC)
  git_error_set(
   GIT_ERROR_REFERENCE,
   "the given reference name '%s' is not valid", name);

 if (error && normalize)
  git_buf_dispose(buf);





 return error;
}
