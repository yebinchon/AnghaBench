
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imap_buffer {int offset; char* buf; int bytes; int sock; } ;


 int assert (int) ;
 int memmove (char*,char*,int) ;
 int puts (char*) ;
 int socket_read (int *,char*,int) ;
 scalar_t__ verbosity ;

__attribute__((used)) static int buffer_gets(struct imap_buffer *b, char **s)
{
 int n;
 int start = b->offset;

 *s = b->buf + start;

 for (;;) {

  if (b->offset + 1 >= b->bytes) {
   if (start) {

    *s = b->buf;

    assert(start <= b->bytes);
    n = b->bytes - start;

    if (n)
     memmove(b->buf, b->buf + start, n);
    b->offset -= start;
    b->bytes = n;
    start = 0;
   }

   n = socket_read(&b->sock, b->buf + b->bytes,
      sizeof(b->buf) - b->bytes);

   if (n <= 0)
    return -1;

   b->bytes += n;
  }

  if (b->buf[b->offset] == '\r') {
   assert(b->offset + 1 < b->bytes);
   if (b->buf[b->offset + 1] == '\n') {
    b->buf[b->offset] = 0;
    b->offset += 2;
    if (0 < verbosity)
     puts(*s);
    return 0;
   }
  }

  b->offset++;
 }

}
