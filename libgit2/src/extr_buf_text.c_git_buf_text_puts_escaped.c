
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* ptr; int size; } ;
typedef TYPE_1__ git_buf ;


 int GIT_ERROR_CHECK_ALLOC_ADD (size_t*,size_t,int) ;
 scalar_t__ git_buf_grow_by (TYPE_1__*,size_t) ;
 int memmove (char*,char const*,size_t) ;
 size_t strcspn (char const*,char const*) ;
 size_t strlen (char const*) ;
 size_t strspn (char const*,char const*) ;

int git_buf_text_puts_escaped(
 git_buf *buf,
 const char *string,
 const char *esc_chars,
 const char *esc_with)
{
 const char *scan;
 size_t total = 0, esc_len = strlen(esc_with), count, alloclen;

 if (!string)
  return 0;

 for (scan = string; *scan; ) {

  count = strcspn(scan, esc_chars);
  total += count;
  scan += count;

  count = strspn(scan, esc_chars);
  total += count * (esc_len + 1);
  scan += count;
 }

 GIT_ERROR_CHECK_ALLOC_ADD(&alloclen, total, 1);
 if (git_buf_grow_by(buf, alloclen) < 0)
  return -1;

 for (scan = string; *scan; ) {
  count = strcspn(scan, esc_chars);

  memmove(buf->ptr + buf->size, scan, count);
  scan += count;
  buf->size += count;

  for (count = strspn(scan, esc_chars); count > 0; --count) {

   memmove(buf->ptr + buf->size, esc_with, esc_len);
   buf->size += esc_len;

   buf->ptr[buf->size] = *scan;
   buf->size++;
   scan++;
  }
 }

 buf->ptr[buf->size] = '\0';

 return 0;
}
