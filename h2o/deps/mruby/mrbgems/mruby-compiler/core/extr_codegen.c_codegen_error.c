
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* filename; int lineno; int jmp; int mpool; int iseq; int mrb; struct TYPE_3__* prev; } ;
typedef TYPE_1__ codegen_scope ;


 int MRB_THROW (int *) ;
 int fprintf (int ,char*,char const*,...) ;
 int mrb_free (int ,int ) ;
 int mrb_pool_close (int ) ;
 int stderr ;

__attribute__((used)) static void
codegen_error(codegen_scope *s, const char *message)
{
  if (!s) return;
  while (s->prev) {
    codegen_scope *tmp = s->prev;
    mrb_free(s->mrb, s->iseq);
    mrb_pool_close(s->mpool);
    s = tmp;
  }

  if (s->filename && s->lineno) {
    fprintf(stderr, "codegen error:%s:%d: %s\n", s->filename, s->lineno, message);
  }
  else {
    fprintf(stderr, "codegen error: %s\n", message);
  }

  MRB_THROW(&s->jmp);
}
