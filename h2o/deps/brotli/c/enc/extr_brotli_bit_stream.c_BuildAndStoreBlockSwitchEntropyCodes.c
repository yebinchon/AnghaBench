
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int block_split_code_; int num_block_types_; int num_blocks_; int block_lengths_; int block_types_; } ;
typedef int HuffmanTree ;
typedef TYPE_1__ BlockEncoder ;


 int BuildAndStoreBlockSplitCode (int ,int ,int ,int ,int *,int *,size_t*,int *) ;

__attribute__((used)) static void BuildAndStoreBlockSwitchEntropyCodes(BlockEncoder* self,
    HuffmanTree* tree, size_t* storage_ix, uint8_t* storage) {
  BuildAndStoreBlockSplitCode(self->block_types_, self->block_lengths_,
      self->num_blocks_, self->num_block_types_, tree, &self->block_split_code_,
      storage_ix, storage);
}
