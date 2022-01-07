
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct refspec_item {char* src; char* dst; } ;
struct refspec {int dummy; } ;


 int memset (struct refspec_item*,int ,int) ;
 scalar_t__ query_refspecs (struct refspec*,struct refspec_item*) ;

char *apply_refspecs(struct refspec *rs, const char *name)
{
 struct refspec_item query;

 memset(&query, 0, sizeof(struct refspec_item));
 query.src = (char *)name;

 if (query_refspecs(rs, &query))
  return ((void*)0);

 return query.dst;
}
