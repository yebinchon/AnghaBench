
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;
typedef struct TYPE_15__ TYPE_13__ ;


struct TYPE_18__ {TYPE_1__** kids; scalar_t__ emitted; } ;
struct TYPE_21__ {char** kids; TYPE_13__** syms; TYPE_2__ x; } ;
struct TYPE_20__ {int name; } ;
struct TYPE_19__ {short** _nts; char** _templates; int (* _kids ) (TYPE_5__*,int,TYPE_5__**) ;int (* emit2 ) (TYPE_5__*) ;scalar_t__* _isinstruction; } ;
struct TYPE_17__ {TYPE_13__** syms; } ;
struct TYPE_16__ {TYPE_3__ x; } ;
struct TYPE_15__ {TYPE_4__ x; } ;
typedef TYPE_5__* Node ;


 TYPE_14__* IR ;
 char NELEMS (TYPE_13__**) ;
 size_t RX ;
 int assert (char*) ;
 int fputs (int ,int ) ;
 int framesize ;
 int getrule (TYPE_5__*,int) ;
 int print (char*,int ) ;
 int putchar (char) ;
 TYPE_5__* reuse (TYPE_5__*,int) ;
 int stdout ;
 int stub1 (TYPE_5__*) ;
 int stub2 (TYPE_5__*,int,TYPE_5__**) ;

__attribute__((used)) static unsigned emitasm(Node p, int nt) {
 int rulenum;
 short *nts;
 char *fmt;
 Node kids[10];

 p = reuse(p, nt);
 rulenum = getrule(p, nt);
 nts = IR->x._nts[rulenum];
 fmt = IR->x._templates[rulenum];
 assert(fmt);
 if (IR->x._isinstruction[rulenum] && p->x.emitted)
  print("%s", p->syms[RX]->x.name);
 else if (*fmt == '#')
  (*IR->x.emit2)(p);
 else {
  if (*fmt == '?') {
   fmt++;
   assert(p->kids[0]);
   if (p->syms[RX] == p->x.kids[0]->syms[RX])
    while (*fmt++ != '\n')
     ;
  }
  for ((*IR->x._kids)(p, rulenum, kids); *fmt; fmt++)
   if (*fmt != '%')
    (void)putchar(*fmt);
   else if (*++fmt == 'F')
    print("%d", framesize);
   else if (*fmt >= '0' && *fmt <= '9')
    emitasm(kids[*fmt - '0'], nts[*fmt - '0']);
   else if (*fmt >= 'a' && *fmt < 'a' + NELEMS(p->syms))
    fputs(p->syms[*fmt - 'a']->x.name, stdout);
   else
    (void)putchar(*fmt);
 }
 return 0;
}
