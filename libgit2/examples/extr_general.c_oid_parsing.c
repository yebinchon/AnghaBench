
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int GIT_OID_HEXSZ ;
 int git_oid_fmt (char*,int *) ;
 int git_oid_fromstr (int *,char*) ;
 int printf (char*,...) ;

__attribute__((used)) static void oid_parsing(git_oid *oid)
{
 char out[GIT_OID_HEXSZ+1];
 char hex[] = "4a202b346bb0fb0db7eff3cffeb3c70babbd2045";

 printf("*Hex to Raw*\n");
 git_oid_fromstr(oid, hex);
 printf("\n*Raw to Hex*\n");
 out[GIT_OID_HEXSZ] = '\0';




 git_oid_fmt(out, oid);




 git_oid_fmt(out, oid);
 printf("SHA hex string: %s\n", out);
}
