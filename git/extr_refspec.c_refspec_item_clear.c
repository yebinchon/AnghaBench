
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct refspec_item {scalar_t__ exact_sha1; scalar_t__ matching; scalar_t__ pattern; scalar_t__ force; int dst; int src; } ;


 int FREE_AND_NULL (int ) ;

void refspec_item_clear(struct refspec_item *item)
{
 FREE_AND_NULL(item->src);
 FREE_AND_NULL(item->dst);
 item->force = 0;
 item->pattern = 0;
 item->matching = 0;
 item->exact_sha1 = 0;
}
