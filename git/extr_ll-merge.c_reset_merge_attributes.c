
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int attr_check_free (int *) ;
 int * merge_attributes ;

void reset_merge_attributes(void)
{
 attr_check_free(merge_attributes);
 merge_attributes = ((void*)0);
}
