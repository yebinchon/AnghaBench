
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grep_source {int identifier; int path; int name; } ;


 int FREE_AND_NULL (int ) ;
 int grep_source_clear_data (struct grep_source*) ;

void grep_source_clear(struct grep_source *gs)
{
 FREE_AND_NULL(gs->name);
 FREE_AND_NULL(gs->path);
 FREE_AND_NULL(gs->identifier);
 grep_source_clear_data(gs);
}
