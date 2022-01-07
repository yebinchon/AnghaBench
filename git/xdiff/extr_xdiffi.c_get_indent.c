
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long size; char* ptr; } ;
typedef TYPE_1__ xrecord_t ;


 int MAX_INDENT ;
 int XDL_ISSPACE (char) ;

__attribute__((used)) static int get_indent(xrecord_t *rec)
{
 long i;
 int ret = 0;

 for (i = 0; i < rec->size; i++) {
  char c = rec->ptr[i];

  if (!XDL_ISSPACE(c))
   return ret;
  else if (c == ' ')
   ret += 1;
  else if (c == '\t')
   ret += 8 - ret % 8;


  if (ret >= MAX_INDENT)
   return MAX_INDENT;
 }


 return -1;
}
