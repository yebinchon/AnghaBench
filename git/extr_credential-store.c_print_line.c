
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;


 int credential_lock ;
 int get_lock_file_fd (int *) ;
 int strbuf_addch (struct strbuf*,char) ;
 int write_or_die (int ,int ,int ) ;

__attribute__((used)) static void print_line(struct strbuf *buf)
{
 strbuf_addch(buf, '\n');
 write_or_die(get_lock_file_fd(&credential_lock), buf->buf, buf->len);
}
