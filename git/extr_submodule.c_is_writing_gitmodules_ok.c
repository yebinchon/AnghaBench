
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int GITMODULES_FILE ;
 int GITMODULES_HEAD ;
 int GITMODULES_INDEX ;
 scalar_t__ file_exists (int ) ;
 scalar_t__ get_oid (int ,struct object_id*) ;

int is_writing_gitmodules_ok(void)
{
 struct object_id oid;
 return file_exists(GITMODULES_FILE) ||
  (get_oid(GITMODULES_INDEX, &oid) < 0 && get_oid(GITMODULES_HEAD, &oid) < 0);
}
