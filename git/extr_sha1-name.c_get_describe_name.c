
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct object_id {int dummy; } ;


 unsigned int GET_OID_COMMIT ;
 unsigned int GET_OID_QUIETLY ;
 int get_short_oid (struct repository*,char const*,int,struct object_id*,unsigned int) ;
 int isxdigit (char) ;

__attribute__((used)) static int get_describe_name(struct repository *r,
        const char *name, int len,
        struct object_id *oid)
{
 const char *cp;
 unsigned flags = GET_OID_QUIETLY | GET_OID_COMMIT;

 for (cp = name + len - 1; name + 2 <= cp; cp--) {
  char ch = *cp;
  if (!isxdigit(ch)) {



   if (ch == 'g' && cp[-1] == '-') {
    cp++;
    len -= cp - name;
    return get_short_oid(r,
           cp, len, oid, flags);
   }
  }
 }
 return -1;
}
