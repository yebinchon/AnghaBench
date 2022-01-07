
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slice_mask {int high_slices; int low_slices; } ;


 int SLICE_NUM_HIGH ;
 int bitmap_copy (int ,int ,int ) ;

__attribute__((used)) static inline void slice_copy_mask(struct slice_mask *dst,
     const struct slice_mask *src)
{
 dst->low_slices = src->low_slices;
 if (!SLICE_NUM_HIGH)
  return;
 bitmap_copy(dst->high_slices, src->high_slices, SLICE_NUM_HIGH);
}
