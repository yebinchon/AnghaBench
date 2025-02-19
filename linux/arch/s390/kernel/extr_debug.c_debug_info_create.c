
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int umode_t ;
struct TYPE_6__ {int mode; int ref_count; struct TYPE_6__* next; struct TYPE_6__* prev; int name; int debugfs_root_entry; } ;
typedef TYPE_1__ debug_info_t ;


 int ALL_AREAS ;
 int DEBUG_DEFAULT_LEVEL ;
 int S_IFMT ;
 TYPE_1__* debug_area_first ;
 TYPE_1__* debug_area_last ;
 int debug_debugfs_root_entry ;
 TYPE_1__* debug_info_alloc (char const*,int,int,int,int ,int ) ;
 int debugfs_create_dir (int ,int ) ;
 int refcount_set (int *,int) ;

__attribute__((used)) static debug_info_t *debug_info_create(const char *name, int pages_per_area,
           int nr_areas, int buf_size, umode_t mode)
{
 debug_info_t *rc;

 rc = debug_info_alloc(name, pages_per_area, nr_areas, buf_size,
         DEBUG_DEFAULT_LEVEL, ALL_AREAS);
 if (!rc)
  goto out;

 rc->mode = mode & ~S_IFMT;


 rc->debugfs_root_entry = debugfs_create_dir(rc->name,
          debug_debugfs_root_entry);


 if (!debug_area_first) {

  debug_area_first = rc;
  rc->prev = ((void*)0);
 } else {

  debug_area_last->next = rc;
  rc->prev = debug_area_last;
 }
 debug_area_last = rc;
 rc->next = ((void*)0);

 refcount_set(&rc->ref_count, 1);
out:
 return rc;
}
