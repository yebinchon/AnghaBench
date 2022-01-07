
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slice_mask {int low_slices; int high_slices; } ;


 int SLICE_NUM_HIGH ;
 int bitmap_or (int ,int ,int ,int ) ;

__attribute__((used)) static inline void slice_or_mask(struct slice_mask *dst,
     const struct slice_mask *src1,
     const struct slice_mask *src2)
{
 dst->low_slices = src1->low_slices | src2->low_slices;
 if (!SLICE_NUM_HIGH)
  return;
 bitmap_or(dst->high_slices, src1->high_slices, src2->high_slices, SLICE_NUM_HIGH);
}
