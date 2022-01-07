
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oid_array {int nr; int * oid; } ;
struct fetch_negotiator {int dummy; } ;


 int for_each_ref (int ,struct fetch_negotiator*) ;
 int rev_list_insert_ref (struct fetch_negotiator*,int *,int *) ;
 int rev_list_insert_ref_oid ;

__attribute__((used)) static void mark_tips(struct fetch_negotiator *negotiator,
        const struct oid_array *negotiation_tips)
{
 int i;

 if (!negotiation_tips) {
  for_each_ref(rev_list_insert_ref_oid, negotiator);
  return;
 }

 for (i = 0; i < negotiation_tips->nr; i++)
  rev_list_insert_ref(negotiator, ((void*)0),
        &negotiation_tips->oid[i]);
 return;
}
