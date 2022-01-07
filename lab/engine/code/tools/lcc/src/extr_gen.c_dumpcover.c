
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {short** _nts; int (* _kids ) (int ,int,int *) ;} ;
struct TYPE_4__ {TYPE_1__ x; } ;
typedef int Node ;


 TYPE_2__* IR ;
 int dumprule (int) ;
 int fprint (int ,char*,...) ;
 int getrule (int ,int) ;
 int reuse (int ,int) ;
 int stderr ;
 int stub1 (int ,int,int *) ;

__attribute__((used)) static void dumpcover(Node p, int nt, int in) {
 int rulenum, i;
 short *nts;
 Node kids[10];

 p = reuse(p, nt);
 rulenum = getrule(p, nt);
 nts = IR->x._nts[rulenum];
 fprint(stderr, "dumpcover(%x) = ", p);
 for (i = 0; i < in; i++)
  fprint(stderr, " ");
 dumprule(rulenum);
 (*IR->x._kids)(p, rulenum, kids);
 for (i = 0; nts[i]; i++)
  dumpcover(kids[i], nts[i], in+1);
}
