
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tag {TYPE_1__* tagged; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {struct object_id oid; } ;


 int die (char*) ;

struct object_id *get_tagged_oid(struct tag *tag)
{
 if (!tag->tagged)
  die("bad tag");
 return &tag->tagged->oid;
}
