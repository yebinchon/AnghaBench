
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lines; int pool; } ;
typedef TYPE_1__ patch_image ;
typedef int git_diff_line ;


 int GIT_ERROR_CHECK_ALLOC (int *) ;
 int git_pool_init (int *,int) ;
 int * git_pool_mallocz (int *,int) ;
 scalar_t__ git_vector_insert (int *,int *) ;
 char* memchr (char const*,char,size_t) ;
 int memset (TYPE_1__*,int,int) ;
 int patch_line_init (int *,char const*,int,int) ;

__attribute__((used)) static int patch_image_init_fromstr(
 patch_image *out, const char *in, size_t in_len)
{
 git_diff_line *line;
 const char *start, *end;

 memset(out, 0x0, sizeof(patch_image));

 git_pool_init(&out->pool, sizeof(git_diff_line));

 for (start = in; start < in + in_len; start = end) {
  end = memchr(start, '\n', in_len - (start - in));

  if (end == ((void*)0))
   end = in + in_len;

  else if (end < in + in_len)
   end++;

  line = git_pool_mallocz(&out->pool, 1);
  GIT_ERROR_CHECK_ALLOC(line);

  if (git_vector_insert(&out->lines, line) < 0)
   return -1;

  patch_line_init(line, start, (end - start), (start - in));
 }

 return 0;
}
