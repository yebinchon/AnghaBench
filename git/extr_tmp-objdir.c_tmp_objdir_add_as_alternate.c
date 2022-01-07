
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf; } ;
struct tmp_objdir {TYPE_1__ path; } ;


 int add_to_alternates_memory (int ) ;

void tmp_objdir_add_as_alternate(const struct tmp_objdir *t)
{
 add_to_alternates_memory(t->path.buf);
}
