
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lengths; } ;
struct TYPE_5__ {int length_; scalar_t__ type_; scalar_t__ idx_; TYPE_2__ const* split_; } ;
typedef TYPE_1__ BlockSplitIterator ;
typedef TYPE_2__ BlockSplit ;



__attribute__((used)) static void InitBlockSplitIterator(BlockSplitIterator* self,
    const BlockSplit* split) {
  self->split_ = split;
  self->idx_ = 0;
  self->type_ = 0;
  self->length_ = split->lengths ? split->lengths[0] : 0;
}
