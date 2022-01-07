
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;
struct grep_source {scalar_t__ driver; scalar_t__ path; } ;


 int grep_attr_lock () ;
 int grep_attr_unlock () ;
 scalar_t__ userdiff_find_by_name (char*) ;
 scalar_t__ userdiff_find_by_path (struct index_state*,scalar_t__) ;

void grep_source_load_driver(struct grep_source *gs,
        struct index_state *istate)
{
 if (gs->driver)
  return;

 grep_attr_lock();
 if (gs->path)
  gs->driver = userdiff_find_by_path(istate, gs->path);
 if (!gs->driver)
  gs->driver = userdiff_find_by_name("default");
 grep_attr_unlock();
}
