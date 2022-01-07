
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat_validity {int sd; } ;


 int FREE_AND_NULL (int ) ;

void stat_validity_clear(struct stat_validity *sv)
{
 FREE_AND_NULL(sv->sd);
}
