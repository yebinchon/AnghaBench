
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {TYPE_1__* parsed_objects; } ;
struct TYPE_2__ {int is_shallow; scalar_t__ alternate_shallow_file; } ;


 int BUG (char*) ;
 int free (scalar_t__) ;
 scalar_t__ xstrdup_or_null (char const*) ;

void set_alternate_shallow_file(struct repository *r, const char *path, int override)
{
 if (r->parsed_objects->is_shallow != -1)
  BUG("is_repository_shallow must not be called before set_alternate_shallow_file");
 if (r->parsed_objects->alternate_shallow_file && !override)
  return;
 free(r->parsed_objects->alternate_shallow_file);
 r->parsed_objects->alternate_shallow_file = xstrdup_or_null(path);
}
