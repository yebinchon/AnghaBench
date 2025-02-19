
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int size; char* ptr; } ;
typedef TYPE_1__ git_buf ;


 int ENSURE_SIZE (TYPE_1__*,size_t) ;
 int GIT_ERROR_CHECK_ALLOC_ADD (size_t*,size_t,int) ;
 int GIT_ERROR_CHECK_ALLOC_MULTIPLY (size_t*,size_t,int) ;
 char* base64_encode ;

int git_buf_encode_base64(git_buf *buf, const char *data, size_t len)
{
 size_t extra = len % 3;
 uint8_t *write, a, b, c;
 const uint8_t *read = (const uint8_t *)data;
 size_t blocks = (len / 3) + !!extra, alloclen;

 GIT_ERROR_CHECK_ALLOC_ADD(&blocks, blocks, 1);
 GIT_ERROR_CHECK_ALLOC_MULTIPLY(&alloclen, blocks, 4);
 GIT_ERROR_CHECK_ALLOC_ADD(&alloclen, alloclen, buf->size);

 ENSURE_SIZE(buf, alloclen);
 write = (uint8_t *)&buf->ptr[buf->size];


 for (len -= extra; len > 0; len -= 3) {
  a = *read++;
  b = *read++;
  c = *read++;

  *write++ = base64_encode[a >> 2];
  *write++ = base64_encode[(a & 0x03) << 4 | b >> 4];
  *write++ = base64_encode[(b & 0x0f) << 2 | c >> 6];
  *write++ = base64_encode[c & 0x3f];
 }

 if (extra > 0) {
  a = *read++;
  b = (extra > 1) ? *read++ : 0;

  *write++ = base64_encode[a >> 2];
  *write++ = base64_encode[(a & 0x03) << 4 | b >> 4];
  *write++ = (extra > 1) ? base64_encode[(b & 0x0f) << 2] : '=';
  *write++ = '=';
 }

 buf->size = ((char *)write) - buf->ptr;
 buf->ptr[buf->size] = '\0';

 return 0;
}
