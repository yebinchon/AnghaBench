
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;


 int free (struct string_list*) ;
 int string_list_clear (struct string_list*,int ) ;

void clear_ref_exclusion(struct string_list **ref_excludes_p)
{
 if (*ref_excludes_p) {
  string_list_clear(*ref_excludes_p, 0);
  free(*ref_excludes_p);
 }
 *ref_excludes_p = ((void*)0);
}
