
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct repository {TYPE_1__* objects; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int odb; } ;


 char const* odb_loose_path (int ,struct strbuf*,struct object_id const*) ;

const char *loose_object_path(struct repository *r, struct strbuf *buf,
         const struct object_id *oid)
{
 return odb_loose_path(r->objects->odb, buf, oid);
}
