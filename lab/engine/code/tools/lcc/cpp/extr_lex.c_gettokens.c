
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uchar ;
struct TYPE_11__ {size_t max; TYPE_2__* lp; TYPE_2__* bp; } ;
typedef TYPE_1__ Tokenrow ;
struct TYPE_12__ {int* t; int wslen; int len; int type; scalar_t__ flag; scalar_t__ hideset; } ;
typedef TYPE_2__ Token ;
struct TYPE_13__ {int* inp; int* inl; int* inb; int fd; scalar_t__ lineinc; } ;
typedef TYPE_3__ Source ;


 int COM2 ;
 int END ;
 int ERROR ;
 int FATAL ;
 int GETACT (int) ;
 int INS ;
 int NAME ;
 int NL ;
 int QBSBIT ;
 int START ;
 int UNCLASS ;
 int WARNING ;
 int** bigfsm ;
 TYPE_3__* cursource ;
 int error (int ,char*) ;
 int fillbuf (TYPE_3__*) ;
 int foldline (TYPE_3__*) ;
 TYPE_2__* growtokenrow (TYPE_1__*) ;
 int memmove (int*,int*,int) ;
 int quicklook (int,int) ;
 int trigraph (TYPE_3__*) ;

int
gettokens(Tokenrow *trp, int reset)
{
 register int c, state, oldstate;
 register uchar *ip;
 register Token *tp, *maxp;
 int runelen;
 Source *s = cursource;
 int nmac = 0;

 tp = trp->lp;
 ip = s->inp;
 if (reset) {
  s->lineinc = 0;
  if (ip>=s->inl) {
   s->inl = s->inb;
   fillbuf(s);
   ip = s->inp = s->inb;
  } else if (ip >= s->inb+(3*INS/4)) {
   memmove(s->inb, ip, 4+s->inl-ip);
   s->inl = s->inb+(s->inl-ip);
   ip = s->inp = s->inb;
  }
 }
 maxp = &trp->bp[trp->max];
 runelen = 1;
 for (;;) {
    continue2:
  if (tp>=maxp) {
   trp->lp = tp;
   tp = growtokenrow(trp);
   maxp = &trp->bp[trp->max];
  }
  tp->type = UNCLASS;
  tp->hideset = 0;
  tp->t = ip;
  tp->wslen = 0;
  tp->flag = 0;
  state = START;
  for (;;) {
   oldstate = state;
   c = *ip;
   if ((state = bigfsm[c][state]) >= 0) {
    ip += runelen;
    runelen = 1;
    continue;
   }
   state = ~state;
  reswitch:
   switch (state&0177) {
   case 131:
    ip += runelen;
    runelen = 1;
   case 130:
    tp->type = GETACT(state);
    tp->len = ip - tp->t;
    tp++;
    goto continue2;

   case 133:
    tp->type = NAME;
    tp->len = ip - tp->t;
    nmac |= quicklook(tp->t[0], tp->len>1?tp->t[1]:0);
    tp++;
    goto continue2;

   case 128:
    tp->wslen = ip - tp->t;
    tp->t = ip;
    state = START;
    continue;

   default:
    if ((state&QBSBIT)==0) {
     ip += runelen;
     runelen = 1;
     continue;
    }
    state &= ~QBSBIT;
    s->inp = ip;
    if (c=='?') {
     if (trigraph(s)) {
      state = oldstate;
      continue;
     }
     goto reswitch;
    }
    if (c=='\\') {
     if (foldline(s)) {
      s->lineinc++;
      state = oldstate;
      continue;
     }
     goto reswitch;
    }
    error(WARNING, "Lexical botch in cpp");
    ip += runelen;
    runelen = 1;
    continue;

   case 137:
    s->inp = ip;
    fillbuf(cursource);
    state = oldstate;
    continue;

   case 136:
    tp->type = END;
    tp->len = 0;
    s->inp = ip;
    if (tp!=trp->bp && (tp-1)->type!=NL && cursource->fd!=-1)
     error(WARNING,"No newline at end of file");
    trp->lp = tp+1;
    return nmac;

   case 129:
    error(ERROR, "Unterminated string or char const");
   case 132:
    tp->t = ip;
    tp->type = NL;
    tp->len = 1;
    tp->wslen = 0;
    s->lineinc++;
    s->inp = ip+1;
    trp->lp = tp+1;
    return nmac;

   case 134:
    error(FATAL, "EOF in string or char constant");
    break;

   case 138:
    s->lineinc++;
    state = COM2;
    ip += runelen;
    runelen = 1;
    if (ip >= s->inb+(7*INS/8)) {
     memmove(tp->t, ip, 4+s->inl-ip);
     s->inl -= ip-tp->t;
     ip = tp->t+1;
    }
    continue;

   case 135:
    error(WARNING, "EOF inside comment");
    --ip;
   case 139:
    ++ip;
    tp->t = ip;
    tp->t[-1] = ' ';
    tp->wslen = 1;
    state = START;
    continue;
   }
   break;
  }
  ip += runelen;
  runelen = 1;
  tp->len = ip - tp->t;
  tp++;
 }
}
