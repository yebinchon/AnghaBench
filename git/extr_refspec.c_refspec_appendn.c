
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct refspec {int dummy; } ;


 int refspec_append (struct refspec*,char const*) ;

void refspec_appendn(struct refspec *rs, const char **refspecs, int nr)
{
 int i;
 for (i = 0; i < nr; i++)
  refspec_append(rs, refspecs[i]);
}
