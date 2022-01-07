
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct status_block {int sep_block_width; int no_separator; } ;



__attribute__((used)) static uint32_t get_sep_offset(struct status_block *block) {
    if (!block->no_separator && block->sep_block_width > 0)
        return block->sep_block_width / 2 + block->sep_block_width % 2;
    return 0;
}
