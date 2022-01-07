
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int dummy; } ;


 int update_progress (void*) ;

__attribute__((used)) static void mark_object(struct object *obj, const char *name, void *data)
{
 update_progress(data);
}
