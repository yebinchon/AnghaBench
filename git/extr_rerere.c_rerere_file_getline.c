
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct rerere_io_file {int input; } ;
struct rerere_io {int dummy; } ;


 int strbuf_getwholeline (struct strbuf*,int ,char) ;

__attribute__((used)) static int rerere_file_getline(struct strbuf *sb, struct rerere_io *io_)
{
 struct rerere_io_file *io = (struct rerere_io_file *)io_;
 return strbuf_getwholeline(sb, io->input, '\n');
}
