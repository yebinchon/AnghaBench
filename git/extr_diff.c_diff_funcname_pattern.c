
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct userdiff_funcname {scalar_t__ pattern; } ;
struct diff_options {TYPE_1__* repo; } ;
struct diff_filespec {TYPE_2__* driver; } ;
struct TYPE_4__ {struct userdiff_funcname const funcname; } ;
struct TYPE_3__ {int index; } ;


 int diff_filespec_load_driver (struct diff_filespec*,int ) ;

__attribute__((used)) static const struct userdiff_funcname *
diff_funcname_pattern(struct diff_options *o, struct diff_filespec *one)
{
 diff_filespec_load_driver(one, o->repo->index);
 return one->driver->funcname.pattern ? &one->driver->funcname : ((void*)0);
}
