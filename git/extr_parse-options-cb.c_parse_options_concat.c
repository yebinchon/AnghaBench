
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {scalar_t__ type; } ;


 int ALLOC_ARRAY (struct option*,int ) ;
 scalar_t__ OPTION_END ;
 int st_add3 (size_t,size_t,int) ;

struct option *parse_options_concat(struct option *a, struct option *b)
{
 struct option *ret;
 size_t i, a_len = 0, b_len = 0;

 for (i = 0; a[i].type != OPTION_END; i++)
  a_len++;
 for (i = 0; b[i].type != OPTION_END; i++)
  b_len++;

 ALLOC_ARRAY(ret, st_add3(a_len, b_len, 1));
 for (i = 0; i < a_len; i++)
  ret[i] = a[i];
 for (i = 0; i < b_len; i++)
  ret[a_len + i] = b[i];
 ret[a_len + b_len] = b[b_len];

 return ret;
}
