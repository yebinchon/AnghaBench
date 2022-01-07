
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fetch_negotiator {struct data* data; int release; int ack; int next; int add_tip; int known_common; } ;
struct TYPE_2__ {int compare; } ;
struct data {TYPE_1__ rev_list; } ;


 int ack ;
 int add_tip ;
 int clear_marks ;
 int compare ;
 int for_each_ref (int ,int *) ;
 int known_common ;
 int marked ;
 int next ;
 int release ;
 struct data* xcalloc (int,int) ;

void skipping_negotiator_init(struct fetch_negotiator *negotiator)
{
 struct data *data;
 negotiator->known_common = known_common;
 negotiator->add_tip = add_tip;
 negotiator->next = next;
 negotiator->ack = ack;
 negotiator->release = release;
 negotiator->data = data = xcalloc(1, sizeof(*data));
 data->rev_list.compare = compare;

 if (marked)
  for_each_ref(clear_marks, ((void*)0));
 marked = 1;
}
