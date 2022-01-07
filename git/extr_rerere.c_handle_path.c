
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int buf; int len; } ;
struct rerere_io {int (* getline ) (struct strbuf*,struct rerere_io*) ;} ;
typedef int git_hash_ctx ;
struct TYPE_2__ {int (* final_fn ) (unsigned char*,int *) ;int (* init_fn ) (int *) ;} ;


 struct strbuf STRBUF_INIT ;
 int handle_conflict (struct strbuf*,struct rerere_io*,int,int *) ;
 scalar_t__ is_cmarker (int ,char,int) ;
 int rerere_io_putmem (int ,int ,struct rerere_io*) ;
 int rerere_io_putstr (int ,struct rerere_io*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int stub1 (int *) ;
 int stub2 (struct strbuf*,struct rerere_io*) ;
 int stub3 (unsigned char*,int *) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static int handle_path(unsigned char *hash, struct rerere_io *io, int marker_size)
{
 git_hash_ctx ctx;
 struct strbuf buf = STRBUF_INIT, out = STRBUF_INIT;
 int has_conflicts = 0;
 if (hash)
  the_hash_algo->init_fn(&ctx);

 while (!io->getline(&buf, io)) {
  if (is_cmarker(buf.buf, '<', marker_size)) {
   has_conflicts = handle_conflict(&out, io, marker_size,
       hash ? &ctx : ((void*)0));
   if (has_conflicts < 0)
    break;
   rerere_io_putmem(out.buf, out.len, io);
   strbuf_reset(&out);
  } else
   rerere_io_putstr(buf.buf, io);
 }
 strbuf_release(&buf);
 strbuf_release(&out);

 if (hash)
  the_hash_algo->final_fn(hash, &ctx);

 return has_conflicts;
}
