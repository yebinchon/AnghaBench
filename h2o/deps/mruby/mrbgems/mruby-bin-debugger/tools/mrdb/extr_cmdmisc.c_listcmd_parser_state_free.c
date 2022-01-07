
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mrb_state ;
struct TYPE_4__ {struct TYPE_4__* filename; } ;
typedef TYPE_1__ listcmd_parser_state ;


 int mrb_free (int *,TYPE_1__*) ;

__attribute__((used)) static void
listcmd_parser_state_free(mrb_state *mrb, listcmd_parser_state *st)
{
  if (st != ((void*)0)) {
    if (st->filename != ((void*)0)) {
      mrb_free(mrb, st->filename);
    }
    mrb_free(mrb, st);
  }
}
