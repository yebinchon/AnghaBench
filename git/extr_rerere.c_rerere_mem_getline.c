
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct TYPE_2__ {size_t len; char* buf; } ;
struct rerere_io_mem {TYPE_1__ input; } ;
struct rerere_io {int dummy; } ;


 char* memchr (char*,char,size_t) ;
 int strbuf_add (struct strbuf*,char*,size_t) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_remove (TYPE_1__*,int ,size_t) ;

__attribute__((used)) static int rerere_mem_getline(struct strbuf *sb, struct rerere_io *io_)
{
 struct rerere_io_mem *io = (struct rerere_io_mem *)io_;
 char *ep;
 size_t len;

 strbuf_release(sb);
 if (!io->input.len)
  return -1;
 ep = memchr(io->input.buf, '\n', io->input.len);
 if (!ep)
  ep = io->input.buf + io->input.len;
 else if (*ep == '\n')
  ep++;
 len = ep - io->input.buf;
 strbuf_add(sb, io->input.buf, len);
 strbuf_remove(&io->input, 0, len);
 return 0;
}
