
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_DEV ;
 int parse_unit (char**) ;

__attribute__((used)) static int ubd_id(char **str, int *start_out, int *end_out)
{
 int n;

 n = parse_unit(str);
 *start_out = 0;
 *end_out = MAX_DEV - 1;
 return n;
}
