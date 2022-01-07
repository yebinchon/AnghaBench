
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int anchors_nr; int * anchors; } ;
typedef TYPE_1__ xpparam_t ;


 int strlen (int ) ;
 int strncmp (char const*,int ,int ) ;

__attribute__((used)) static int is_anchor(xpparam_t const *xpp, const char *line)
{
 int i;
 for (i = 0; i < xpp->anchors_nr; i++) {
  if (!strncmp(line, xpp->anchors[i], strlen(xpp->anchors[i])))
   return 1;
 }
 return 0;
}
