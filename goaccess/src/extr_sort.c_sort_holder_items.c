
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int field; int sort; } ;
typedef TYPE_1__ GSort ;
typedef int GHolderItem ;
 int SORT_DESC ;
 int cmp_avgts_asc ;
 int cmp_avgts_desc ;
 int cmp_bw_asc ;
 int cmp_bw_desc ;
 int cmp_cumts_asc ;
 int cmp_cumts_desc ;
 int cmp_data_asc ;
 int cmp_data_desc ;
 int cmp_maxts_asc ;
 int cmp_maxts_desc ;
 int cmp_mthd_asc ;
 int cmp_mthd_desc ;
 int cmp_num_asc ;
 int cmp_num_desc ;
 int cmp_proto_asc ;
 int cmp_proto_desc ;
 int cmp_vis_asc ;
 int cmp_vis_desc ;
 int qsort (int *,int,int,int ) ;

void
sort_holder_items (GHolderItem * items, int size, GSort sort)
{
  switch (sort.field) {
  case 132:
    if (sort.sort == SORT_DESC)
      qsort (items, size, sizeof (GHolderItem), cmp_num_desc);
    else
      qsort (items, size, sizeof (GHolderItem), cmp_num_asc);
    break;
  case 128:
    if (sort.sort == SORT_DESC)
      qsort (items, size, sizeof (GHolderItem), cmp_vis_desc);
    else
      qsort (items, size, sizeof (GHolderItem), cmp_vis_asc);
    break;
  case 133:
    if (sort.sort == SORT_DESC)
      qsort (items, size, sizeof (GHolderItem), cmp_data_desc);
    else
      qsort (items, size, sizeof (GHolderItem), cmp_data_asc);
    break;
  case 135:
    if (sort.sort == SORT_DESC)
      qsort (items, size, sizeof (GHolderItem), cmp_bw_desc);
    else
      qsort (items, size, sizeof (GHolderItem), cmp_bw_asc);
    break;
  case 136:
    if (sort.sort == SORT_DESC)
      qsort (items, size, sizeof (GHolderItem), cmp_avgts_desc);
    else
      qsort (items, size, sizeof (GHolderItem), cmp_avgts_asc);
    break;
  case 134:
    if (sort.sort == SORT_DESC)
      qsort (items, size, sizeof (GHolderItem), cmp_cumts_desc);
    else
      qsort (items, size, sizeof (GHolderItem), cmp_cumts_asc);
    break;
  case 131:
    if (sort.sort == SORT_DESC)
      qsort (items, size, sizeof (GHolderItem), cmp_maxts_desc);
    else
      qsort (items, size, sizeof (GHolderItem), cmp_maxts_asc);
    break;
  case 129:
    if (sort.sort == SORT_DESC)
      qsort (items, size, sizeof (GHolderItem), cmp_proto_desc);
    else
      qsort (items, size, sizeof (GHolderItem), cmp_proto_asc);
    break;
  case 130:
    if (sort.sort == SORT_DESC)
      qsort (items, size, sizeof (GHolderItem), cmp_mthd_desc);
    else
      qsort (items, size, sizeof (GHolderItem), cmp_mthd_asc);
    break;
  }
}
