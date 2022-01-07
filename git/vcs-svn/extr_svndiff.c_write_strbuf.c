
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ len; int buf; } ;
typedef int FILE ;


 int error_errno (char*) ;
 scalar_t__ fwrite (int ,int,scalar_t__,int *) ;

__attribute__((used)) static int write_strbuf(struct strbuf *sb, FILE *out)
{
 if (fwrite(sb->buf, 1, sb->len, out) == sb->len)
  return 0;
 return error_errno("cannot write delta postimage");
}
