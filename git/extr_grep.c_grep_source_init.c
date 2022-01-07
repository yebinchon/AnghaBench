
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grep_source {int type; int * identifier; int * driver; scalar_t__ size; int * buf; void* path; void* name; } ;
typedef enum grep_source_type { ____Placeholder_grep_source_type } grep_source_type ;





 int * oiddup (void const*) ;
 int * xstrdup (void const*) ;
 void* xstrdup_or_null (char const*) ;

void grep_source_init(struct grep_source *gs, enum grep_source_type type,
        const char *name, const char *path,
        const void *identifier)
{
 gs->type = type;
 gs->name = xstrdup_or_null(name);
 gs->path = xstrdup_or_null(path);
 gs->buf = ((void*)0);
 gs->size = 0;
 gs->driver = ((void*)0);

 switch (type) {
 case 129:
  gs->identifier = xstrdup(identifier);
  break;
 case 128:
  gs->identifier = oiddup(identifier);
  break;
 case 130:
  gs->identifier = ((void*)0);
  break;
 }
}
