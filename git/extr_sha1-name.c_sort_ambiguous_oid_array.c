
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct oid_array {int nr; int oid; } ;


 int QSORT_S (int ,int ,int ,struct repository*) ;
 int sort_ambiguous ;

__attribute__((used)) static void sort_ambiguous_oid_array(struct repository *r, struct oid_array *a)
{
 QSORT_S(a->oid, a->nr, sort_ambiguous, r);
}
