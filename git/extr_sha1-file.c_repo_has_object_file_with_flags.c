
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int have_repository; } ;


 int OBJECT_INFO_SKIP_CACHED ;
 scalar_t__ oid_object_info_extended (struct repository*,struct object_id const*,int *,int) ;
 TYPE_1__* startup_info ;

int repo_has_object_file_with_flags(struct repository *r,
        const struct object_id *oid, int flags)
{
 if (!startup_info->have_repository)
  return 0;
 return oid_object_info_extended(r, oid, ((void*)0),
     flags | OBJECT_INFO_SKIP_CACHED) >= 0;
}
