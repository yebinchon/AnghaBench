
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int * buf; } ;
struct argv_array {int argv; int argc; } ;


 struct argv_array ARGV_ARRAY_INIT ;
 scalar_t__ EOF ;
 int _ (char*) ;
 int argv_array_clear (struct argv_array*) ;
 int argv_array_push (struct argv_array*,int *) ;
 int die (int ,int *) ;
 int exit (int) ;
 int fflush (int ) ;
 int printf (char*) ;
 int push (int ,int ) ;
 scalar_t__ starts_with (int *,char*) ;
 int stdin ;
 int stdout ;
 scalar_t__ strbuf_getline_lf (struct strbuf*,int ) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static void parse_push(struct strbuf *buf)
{
 struct argv_array specs = ARGV_ARRAY_INIT;
 int ret;

 do {
  if (starts_with(buf->buf, "push "))
   argv_array_push(&specs, buf->buf + 5);
  else
   die(_("http transport does not support %s"), buf->buf);

  strbuf_reset(buf);
  if (strbuf_getline_lf(buf, stdin) == EOF)
   goto free_specs;
  if (!*buf->buf)
   break;
 } while (1);

 ret = push(specs.argc, specs.argv);
 printf("\n");
 fflush(stdout);

 if (ret)
  exit(128);

 free_specs:
 argv_array_clear(&specs);
}
