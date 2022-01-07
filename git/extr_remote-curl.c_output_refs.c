
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {char* symref; char* name; int old_oid; struct ref* next; } ;


 int fflush (int ) ;
 char* oid_to_hex (int *) ;
 int printf (char*,...) ;
 int stdout ;

__attribute__((used)) static void output_refs(struct ref *refs)
{
 struct ref *posn;
 for (posn = refs; posn; posn = posn->next) {
  if (posn->symref)
   printf("@%s %s\n", posn->symref, posn->name);
  else
   printf("%s %s\n", oid_to_hex(&posn->old_oid), posn->name);
 }
 printf("\n");
 fflush(stdout);
}
