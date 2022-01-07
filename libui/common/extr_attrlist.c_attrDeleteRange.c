
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiprivAttrList ;
struct attr {size_t start; size_t end; struct attr* next; } ;


 struct attr* attrDelete (int *,struct attr*) ;
 int attrRangeIntersect (struct attr*,size_t*,size_t*) ;

__attribute__((used)) static struct attr *attrDeleteRange(uiprivAttrList *alist, struct attr *a, size_t start, size_t end)
{
 size_t ostart, oend;
 size_t count;

 ostart = start;
 oend = end;
 count = oend - ostart;

 if (!attrRangeIntersect(a, &start, &end)) {


  if (a->start >= ostart)
   a->start -= count;
  if (a->end >= oend)
   a->end -= count;
  return a->next;
 }




 if (a->start >= start && a->end <= end)
  return attrDelete(alist, a);


 if (a->start == start) {


  a->start = end - count;
  a->end -= count;
  return a->next;
 }
 if (a->end == end) {

  a->end = start;
  return a->next;
 }



 a->end -= count;
 return a->next;
}
