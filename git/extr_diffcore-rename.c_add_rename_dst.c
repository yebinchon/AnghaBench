
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct diff_filespec {int mode; int oid_valid; int oid; int path; } ;
struct TYPE_5__ {int * pair; int two; } ;


 int ALLOC_GROW (TYPE_1__*,int,int ) ;
 int MOVE_ARRAY (TYPE_1__*,TYPE_1__*,int) ;
 int alloc_filespec (int ) ;
 int fill_filespec (int ,int *,int ,int ) ;
 int find_rename_dst (struct diff_filespec*) ;
 TYPE_1__* rename_dst ;
 int rename_dst_alloc ;
 int rename_dst_nr ;

__attribute__((used)) static int add_rename_dst(struct diff_filespec *two)
{
 int first = find_rename_dst(two);

 if (first >= 0)
  return -1;
 first = -first - 1;


 ALLOC_GROW(rename_dst, rename_dst_nr + 1, rename_dst_alloc);
 rename_dst_nr++;
 if (first < rename_dst_nr)
  MOVE_ARRAY(rename_dst + first + 1, rename_dst + first,
      rename_dst_nr - first - 1);
 rename_dst[first].two = alloc_filespec(two->path);
 fill_filespec(rename_dst[first].two, &two->oid, two->oid_valid,
        two->mode);
 rename_dst[first].pair = ((void*)0);
 return 0;
}
