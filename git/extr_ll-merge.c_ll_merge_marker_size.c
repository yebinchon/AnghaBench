
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct index_state {int dummy; } ;
struct attr_check {TYPE_1__* items; } ;
struct TYPE_2__ {scalar_t__ value; } ;


 int DEFAULT_CONFLICT_MARKER_SIZE ;
 int atoi (scalar_t__) ;
 struct attr_check* attr_check_initl (char*,int *) ;
 int git_check_attr (struct index_state*,char const*,struct attr_check*) ;

int ll_merge_marker_size(struct index_state *istate, const char *path)
{
 static struct attr_check *check;
 int marker_size = DEFAULT_CONFLICT_MARKER_SIZE;

 if (!check)
  check = attr_check_initl("conflict-marker-size", ((void*)0));
 git_check_attr(istate, path, check);
 if (check->items[0].value) {
  marker_size = atoi(check->items[0].value);
  if (marker_size <= 0)
   marker_size = DEFAULT_CONFLICT_MARKER_SIZE;
 }
 return marker_size;
}
