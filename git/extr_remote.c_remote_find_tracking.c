
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote {int fetch; } ;
struct refspec_item {int dummy; } ;


 int query_refspecs (int *,struct refspec_item*) ;

int remote_find_tracking(struct remote *remote, struct refspec_item *refspec)
{
 return query_refspecs(&remote->fetch, refspec);
}
