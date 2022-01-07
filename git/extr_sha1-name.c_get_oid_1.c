
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct object_id {int dummy; } ;
typedef enum get_oid_result { ____Placeholder_get_oid_result } get_oid_result ;


 int FOUND ;
 unsigned int INT_MAX ;
 int MISSING_OBJECT ;
 int get_describe_name (struct repository*,char const*,int,struct object_id*) ;
 int get_nth_ancestor (struct repository*,char const*,int,struct object_id*,unsigned int) ;
 int get_oid_basic (struct repository*,char const*,int,struct object_id*,unsigned int) ;
 int get_parent (struct repository*,char const*,int,struct object_id*,unsigned int) ;
 int get_short_oid (struct repository*,char const*,int,struct object_id*,unsigned int) ;
 int peel_onion (struct repository*,char const*,int,struct object_id*,unsigned int) ;
 scalar_t__ unsigned_add_overflows (unsigned int,unsigned int) ;
 scalar_t__ unsigned_mult_overflows (unsigned int,int) ;

__attribute__((used)) static enum get_oid_result get_oid_1(struct repository *r,
         const char *name, int len,
         struct object_id *oid,
         unsigned lookup_flags)
{
 int ret, has_suffix;
 const char *cp;




 has_suffix = 0;
 for (cp = name + len - 1; name <= cp; cp--) {
  int ch = *cp;
  if ('0' <= ch && ch <= '9')
   continue;
  if (ch == '~' || ch == '^')
   has_suffix = ch;
  break;
 }

 if (has_suffix) {
  unsigned int num = 0;
  int len1 = cp - name;
  cp++;
  while (cp < name + len) {
   unsigned int digit = *cp++ - '0';
   if (unsigned_mult_overflows(num, 10))
    return MISSING_OBJECT;
   num *= 10;
   if (unsigned_add_overflows(num, digit))
    return MISSING_OBJECT;
   num += digit;
  }
  if (!num && len1 == len - 1)
   num = 1;
  else if (num > INT_MAX)
   return MISSING_OBJECT;
  if (has_suffix == '^')
   return get_parent(r, name, len1, oid, num);

  return get_nth_ancestor(r, name, len1, oid, num);
 }

 ret = peel_onion(r, name, len, oid, lookup_flags);
 if (!ret)
  return FOUND;

 ret = get_oid_basic(r, name, len, oid, lookup_flags);
 if (!ret)
  return FOUND;


 ret = get_describe_name(r, name, len, oid);
 if (!ret)
  return FOUND;

 return get_short_oid(r, name, len, oid, lookup_flags);
}
