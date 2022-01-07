
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct master {int dev; struct component_match* match; } ;
struct component_match_array {int duplicate; struct component* component; } ;
struct component_match {size_t num; struct component_match_array* compare; } ;
struct component {struct master* master; int dev; } ;


 int ENXIO ;
 int dev_dbg (int ,char*,size_t,...) ;
 int dev_name (int ) ;
 struct component* find_component (struct master*,struct component_match_array*) ;

__attribute__((used)) static int find_components(struct master *master)
{
 struct component_match *match = master->match;
 size_t i;
 int ret = 0;





 for (i = 0; i < match->num; i++) {
  struct component_match_array *mc = &match->compare[i];
  struct component *c;

  dev_dbg(master->dev, "Looking for component %zu\n", i);

  if (match->compare[i].component)
   continue;

  c = find_component(master, mc);
  if (!c) {
   ret = -ENXIO;
   break;
  }

  dev_dbg(master->dev, "found component %s, duplicate %u\n", dev_name(c->dev), !!c->master);


  match->compare[i].duplicate = !!c->master;
  match->compare[i].component = c;
  c->master = master;
 }
 return ret;
}
