
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* tp; TYPE_1__* lp; TYPE_1__* bp; } ;
typedef TYPE_2__ Tokenrow ;
struct TYPE_12__ {int line; int lineinc; scalar_t__ ifdepth; } ;
struct TYPE_10__ {scalar_t__ type; } ;


 scalar_t__ END ;
 int ERROR ;
 scalar_t__ SHARP ;
 int control (TYPE_2__*) ;
 TYPE_8__* cursource ;
 int error (int ,char*) ;
 int expandrow (TYPE_2__*,int *) ;
 int genline () ;
 int gettokens (TYPE_2__*,int) ;
 scalar_t__ ifdepth ;
 scalar_t__ incdepth ;
 int outbuf ;
 int outbufp ;
 int puttokens (TYPE_2__*) ;
 int setempty (TYPE_2__*) ;
 scalar_t__ skipping ;
 int unsetsource () ;

void
process(Tokenrow *trp)
{
 int anymacros = 0;

 for (;;) {
  if (trp->tp >= trp->lp) {
   trp->tp = trp->lp = trp->bp;
   outbufp = outbuf;
   anymacros |= gettokens(trp, 1);
   trp->tp = trp->bp;
  }
  if (trp->tp->type == END) {
   if (--incdepth>=0) {
    if (cursource->ifdepth)
     error(ERROR,
      "Unterminated conditional in #include");
    unsetsource();
    cursource->line += cursource->lineinc;
    trp->tp = trp->lp;
    genline();
    continue;
   }
   if (ifdepth)
    error(ERROR, "Unterminated #if/#ifdef/#ifndef");
   break;
  }
  if (trp->tp->type==SHARP) {
   trp->tp += 1;
   control(trp);
  } else if (!skipping && anymacros)
   expandrow(trp, ((void*)0));
  if (skipping)
   setempty(trp);
  puttokens(trp);
  anymacros = 0;
  cursource->line += cursource->lineinc;
  if (cursource->lineinc>1) {
   genline();
  }
 }
}
