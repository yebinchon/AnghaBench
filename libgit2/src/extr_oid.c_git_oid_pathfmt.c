
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * id; } ;
typedef TYPE_1__ git_oid ;


 char* fmt_one (char*,int ) ;

void git_oid_pathfmt(char *str, const git_oid *oid)
{
 size_t i;

 str = fmt_one(str, oid->id[0]);
 *str++ = '/';
 for (i = 1; i < sizeof(oid->id); i++)
  str = fmt_one(str, oid->id[i]);
}
