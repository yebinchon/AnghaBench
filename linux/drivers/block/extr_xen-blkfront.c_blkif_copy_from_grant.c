
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct copy_from_grant {size_t grant_idx; scalar_t__ bvec_offset; scalar_t__ bvec_data; struct blk_shadow* s; } ;
struct blk_shadow {TYPE_1__** grants_used; } ;
struct TYPE_2__ {int page; } ;


 char* kmap_atomic (int ) ;
 int kunmap_atomic (char*) ;
 int memcpy (scalar_t__,char*,unsigned int) ;

__attribute__((used)) static void blkif_copy_from_grant(unsigned long gfn, unsigned int offset,
      unsigned int len, void *data)
{
 struct copy_from_grant *info = data;
 char *shared_data;

 const struct blk_shadow *s = info->s;

 shared_data = kmap_atomic(s->grants_used[info->grant_idx]->page);

 memcpy(info->bvec_data + info->bvec_offset,
        shared_data + offset, len);

 info->bvec_offset += len;
 info->grant_idx++;

 kunmap_atomic(shared_data);
}
