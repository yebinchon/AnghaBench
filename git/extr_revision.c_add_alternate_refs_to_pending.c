
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int dummy; } ;
struct add_alternate_refs_data {unsigned int flags; struct rev_info* revs; } ;


 int add_one_alternate_ref ;
 int for_each_alternate_ref (int ,struct add_alternate_refs_data*) ;

__attribute__((used)) static void add_alternate_refs_to_pending(struct rev_info *revs,
       unsigned int flags)
{
 struct add_alternate_refs_data data;
 data.revs = revs;
 data.flags = flags;
 for_each_alternate_ref(add_one_alternate_ref, &data);
}
