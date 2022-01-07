
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ aas_lreachability_t ;


 int AAS_Error (char*) ;
 TYPE_1__* nextreachability ;
 int numlreachabilities ;

aas_lreachability_t *AAS_AllocReachability(void)
{
 aas_lreachability_t *r;

 if (!nextreachability) return ((void*)0);

 if (!nextreachability->next) AAS_Error("AAS_MAX_REACHABILITYSIZE\n");

 r = nextreachability;
 nextreachability = nextreachability->next;
 numlreachabilities++;
 return r;
}
