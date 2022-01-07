
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct oid_array {int dummy; } ;
struct diff_filespec {int oid; int mode; scalar_t__ oid_valid; } ;


 int OBJECT_INFO_FOR_PREFETCH ;
 int S_ISGITLINK (int ) ;
 int oid_array_append (struct oid_array*,int *) ;
 scalar_t__ oid_object_info_extended (struct repository*,int *,int *,int ) ;

__attribute__((used)) static void add_if_missing(struct repository *r,
      struct oid_array *to_fetch,
      const struct diff_filespec *filespec)
{
 if (filespec && filespec->oid_valid &&
     !S_ISGITLINK(filespec->mode) &&
     oid_object_info_extended(r, &filespec->oid, ((void*)0),
         OBJECT_INFO_FOR_PREFETCH))
  oid_array_append(to_fetch, &filespec->oid);
}
