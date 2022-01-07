
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ERROR_INVALID ;
 int git_error_set (int ,char*) ;

__attribute__((used)) static int hdr_sz(
 size_t *size,
 const unsigned char **delta,
 const unsigned char *end)
{
 const unsigned char *d = *delta;
 size_t r = 0;
 unsigned int c, shift = 0;

 do {
  if (d == end) {
   git_error_set(GIT_ERROR_INVALID, "truncated delta");
   return -1;
  }

  c = *d++;
  r |= (c & 0x7f) << shift;
  shift += 7;
 } while (c & 0x80);
 *delta = d;
 *size = r;
 return 0;
}
