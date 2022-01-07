
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum trailer_where { ____Placeholder_trailer_where } trailer_where ;


 int WHERE_AFTER ;
 int WHERE_END ;

__attribute__((used)) static int after_or_end(enum trailer_where where)
{
 return (where == WHERE_AFTER) || (where == WHERE_END);
}
