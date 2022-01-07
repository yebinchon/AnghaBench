
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct line_buffer {int dummy; } ;
typedef scalar_t__ off_t ;


 scalar_t__ S_IFLNK ;
 long apply_delta (scalar_t__,struct line_buffer*,char const*,scalar_t__) ;
 int assert (int) ;
 int buffer_copy_bytes (int *,long) ;
 int buffer_skip_bytes (int *,scalar_t__) ;
 int fputc (char,int ) ;
 int postimage ;
 int printf (char*,long) ;
 int stdout ;
 scalar_t__ strlen (char*) ;

void fast_export_blob_delta(uint32_t mode,
    uint32_t old_mode, const char *old_data,
    off_t len, struct line_buffer *input)
{
 long postimage_len;

 assert(len >= 0);
 postimage_len = apply_delta(len, input, old_data, old_mode);
 if (mode == S_IFLNK) {
  buffer_skip_bytes(&postimage, strlen("link "));
  postimage_len -= strlen("link ");
 }
 printf("data %ld\n", postimage_len);
 buffer_copy_bytes(&postimage, postimage_len);
 fputc('\n', stdout);
}
