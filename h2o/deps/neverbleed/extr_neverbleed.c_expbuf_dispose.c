
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expbuf_t {scalar_t__ capacity; int buf; } ;


 int OPENSSL_cleanse (int ,scalar_t__) ;
 int free (int ) ;
 int memset (struct expbuf_t*,int ,int) ;

__attribute__((used)) static void expbuf_dispose(struct expbuf_t *buf)
{
    if (buf->capacity != 0)
        OPENSSL_cleanse(buf->buf, buf->capacity);
    free(buf->buf);
    memset(buf, 0, sizeof(*buf));
}
