
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int assert (int) ;
 int git_buf_clear (int *) ;
 int git_buf_put (int *,char const*,size_t) ;
 int git_buf_puts (int *,char const*) ;
 int git_buf_sanitize (int *) ;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int refspec_transform(
 git_buf *out, const char *from, const char *to, const char *name)
{
 const char *from_star, *to_star;
 size_t replacement_len, star_offset;

 git_buf_sanitize(out);
 git_buf_clear(out);







 from_star = strchr(from, '*');
 to_star = strchr(to, '*');

 assert(from_star && to_star);


 star_offset = from_star - from;


 git_buf_put(out, to, to_star - to);





 replacement_len = strlen(name + star_offset) - strlen(from_star + 1);
 git_buf_put(out, name + star_offset, replacement_len);

 return git_buf_puts(out, to_star + 1);
}
