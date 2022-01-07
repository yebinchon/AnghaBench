
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct refspec_item {int src; } ;
struct ref {int dummy; } ;


 int _ (char*) ;
 int count_refspec_match (int ,struct ref*,struct ref**) ;
 int error (int ,int ) ;
 int try_explicit_object_name (int ,struct ref**) ;

__attribute__((used)) static int match_explicit_lhs(struct ref *src,
         struct refspec_item *rs,
         struct ref **match,
         int *allocated_match)
{
 switch (count_refspec_match(rs->src, src, match)) {
 case 1:
  if (allocated_match)
   *allocated_match = 0;
  return 0;
 case 0:




  if (try_explicit_object_name(rs->src, match) < 0)
   return error(_("src refspec %s does not match any"), rs->src);
  if (allocated_match)
   *allocated_match = 1;
  return 0;
 default:
  return error(_("src refspec %s matches more than one"), rs->src);
 }
}
