
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ Tree ;
struct TYPE_5__ {char* name; int type; } ;
typedef TYPE_1__* Symbol ;


 int appendstr (char*) ;
 int frameno ;
 scalar_t__ freturn (int ) ;
 scalar_t__ idtree (int ) ;
 int tracefinis (TYPE_1__*) ;
 int tracevalue (scalar_t__,int ) ;
 scalar_t__ voidtype ;

__attribute__((used)) static void tracereturn(Symbol printer, Symbol f, Tree e) {
 appendstr(f->name); appendstr("#");
 tracevalue(idtree(frameno), 0);
 appendstr(" returned");
 if (freturn(f->type) != voidtype && e) {
  appendstr(" ");
  tracevalue(e, 0);
 }
 appendstr("\n");
 tracefinis(printer);
}
