
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ len; int buf; } ;
typedef int ssize_t ;
typedef int FILE ;


 int fwrite (int ,int,scalar_t__,int *) ;

ssize_t strbuf_write(struct strbuf *sb, FILE *f)
{
 return sb->len ? fwrite(sb->buf, 1, sb->len, f) : 0;
}
