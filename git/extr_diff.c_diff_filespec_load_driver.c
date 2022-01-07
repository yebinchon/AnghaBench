
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;
struct diff_filespec {scalar_t__ driver; int path; int mode; } ;


 scalar_t__ S_ISREG (int ) ;
 scalar_t__ userdiff_find_by_name (char*) ;
 scalar_t__ userdiff_find_by_path (struct index_state*,int ) ;

__attribute__((used)) static void diff_filespec_load_driver(struct diff_filespec *one,
          struct index_state *istate)
{

 if (one->driver)
  return;

 if (S_ISREG(one->mode))
  one->driver = userdiff_find_by_path(istate, one->path);


 if (!one->driver)
  one->driver = userdiff_find_by_name("default");
}
