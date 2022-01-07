
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {char* symbol; int op; struct TYPE_10__* prev; } ;
typedef TYPE_1__ inst ;
struct TYPE_11__ {TYPE_1__* last; } ;
typedef TYPE_2__ block ;
struct TYPE_12__ {int flags; } ;


 int OP_HAS_BINDING ;
 int OP_HAS_CONSTANT ;
 int OP_HAS_VARIABLE ;
 int assert (int ) ;
 scalar_t__ block_bind_subblock (int ,TYPE_2__,int,int ) ;
 int block_has_only_binders (TYPE_2__,int) ;
 int free (char*) ;
 int inst_block (TYPE_1__*) ;
 char* jv_mem_alloc (int) ;
 TYPE_3__* opcode_describe (int ) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

block block_bind_library(block binder, block body, int bindflags, const char *libname) {
  bindflags |= OP_HAS_BINDING;
  int nrefs = 0;
  int matchlen = (libname == ((void*)0)) ? 0 : strlen(libname);
  char *matchname = jv_mem_alloc(matchlen+2+1);
  matchname[0] = '\0';
  if (libname != ((void*)0) && libname[0] != '\0') {
    strcpy(matchname,libname);
    strcpy(matchname+matchlen, "::");
    matchlen += 2;
  }
  assert(block_has_only_binders(binder, bindflags));
  for (inst *curr = binder.last; curr; curr = curr->prev) {
    int bindflags2 = bindflags;
    char* cname = curr->symbol;
    char* tname = jv_mem_alloc(strlen(curr->symbol)+matchlen+1);
    strcpy(tname, matchname);
    strcpy(tname+matchlen, curr->symbol);


    if ((opcode_describe(curr->op)->flags & (OP_HAS_VARIABLE | OP_HAS_CONSTANT)))
      bindflags2 = OP_HAS_VARIABLE | OP_HAS_BINDING;


    curr->symbol = tname;
    nrefs += block_bind_subblock(inst_block(curr), body, bindflags2, 0);
    curr->symbol = cname;
    free(tname);
  }
  free(matchname);
  return body;
}
