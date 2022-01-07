
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int compare; } ;
struct negotiation_state {TYPE_1__ rev_list; } ;
struct fetch_negotiator {struct negotiation_state* data; int release; int ack; int next; int add_tip; int known_common; } ;


 int ack ;
 int add_tip ;
 int clear_marks ;
 int compare_commits_by_commit_date ;
 int for_each_ref (int ,int *) ;
 int known_common ;
 int marked ;
 int next ;
 int release ;
 struct negotiation_state* xcalloc (int,int) ;

void default_negotiator_init(struct fetch_negotiator *negotiator)
{
 struct negotiation_state *ns;
 negotiator->known_common = known_common;
 negotiator->add_tip = add_tip;
 negotiator->next = next;
 negotiator->ack = ack;
 negotiator->release = release;
 negotiator->data = ns = xcalloc(1, sizeof(*ns));
 ns->rev_list.compare = compare_commits_by_commit_date;

 if (marked)
  for_each_ref(clear_marks, ((void*)0));
 marked = 1;
}
