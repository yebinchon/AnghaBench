#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  unsigned int uint64_t ;
typedef  unsigned int uint32_t ;
struct TYPE_15__ {size_t cmd_prefix_; size_t insert_len_; size_t dist_prefix_; int dist_extra_; } ;
struct TYPE_13__ {size_t num_types; int /*<<< orphan*/  num_blocks; int /*<<< orphan*/  lengths; int /*<<< orphan*/  types; } ;
struct TYPE_12__ {size_t num_types; int /*<<< orphan*/  num_blocks; int /*<<< orphan*/  lengths; int /*<<< orphan*/  types; } ;
struct TYPE_11__ {size_t num_types; int /*<<< orphan*/  num_blocks; int /*<<< orphan*/  lengths; int /*<<< orphan*/  types; } ;
struct TYPE_14__ {scalar_t__ literal_context_map_size; scalar_t__ distance_context_map_size; int /*<<< orphan*/  distance_context_map; int /*<<< orphan*/  literal_context_map; int /*<<< orphan*/  distance_histograms_size; int /*<<< orphan*/  distance_histograms; int /*<<< orphan*/  command_histograms_size; int /*<<< orphan*/  command_histograms; int /*<<< orphan*/  literal_histograms_size; int /*<<< orphan*/  literal_histograms; TYPE_3__ literal_split; TYPE_2__ distance_split; TYPE_1__ command_split; } ;
typedef  TYPE_4__ MetaBlockSplit ;
typedef  int /*<<< orphan*/  MemoryManager ;
typedef  unsigned int ContextType ;
typedef  TYPE_5__ Command ;
typedef  int /*<<< orphan*/  BlockEncoder ;
typedef  scalar_t__ BROTLI_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BROTLI_DISTANCE_CONTEXT_BITS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BROTLI_LITERAL_CONTEXT_BITS ; 
 size_t BROTLI_NUM_COMMAND_SYMBOLS ; 
 unsigned int BROTLI_NUM_DISTANCE_SHORT_CODES ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_5__ const*) ; 
 size_t FUNC10 (TYPE_5__ const*) ; 
 size_t FUNC11 (size_t,size_t,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,size_t*,size_t*) ; 
 int HuffmanTree ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (size_t*,size_t*) ; 
 int /*<<< orphan*/  MAX_HUFFMAN_TREE_SIZE ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__ const*,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,size_t,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,size_t const,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,size_t,size_t,int /*<<< orphan*/ ,size_t*,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,size_t*,size_t*) ; 
 int tree ; 

void FUNC20(MemoryManager* m,
                          const uint8_t* input,
                          size_t start_pos,
                          size_t length,
                          size_t mask,
                          uint8_t prev_byte,
                          uint8_t prev_byte2,
                          BROTLI_BOOL is_last,
                          uint32_t num_direct_distance_codes,
                          uint32_t distance_postfix_bits,
                          ContextType literal_context_mode,
                          const Command *commands,
                          size_t n_commands,
                          const MetaBlockSplit* mb,
                          size_t *storage_ix,
                          uint8_t *storage) {
  size_t pos = start_pos;
  size_t i;
  size_t num_distance_codes =
      BROTLI_NUM_DISTANCE_SHORT_CODES + num_direct_distance_codes +
      (48u << distance_postfix_bits);
  HuffmanTree* tree;
  BlockEncoder literal_enc;
  BlockEncoder command_enc;
  BlockEncoder distance_enc;

  FUNC16(is_last, length, storage_ix, storage);

  tree = FUNC0(m, HuffmanTree, MAX_HUFFMAN_TREE_SIZE);
  if (FUNC2(m)) return;
  FUNC13(&literal_enc, 256, mb->literal_split.num_types,
      mb->literal_split.types, mb->literal_split.lengths,
      mb->literal_split.num_blocks);
  FUNC13(&command_enc, BROTLI_NUM_COMMAND_SYMBOLS,
      mb->command_split.num_types, mb->command_split.types,
      mb->command_split.lengths, mb->command_split.num_blocks);
  FUNC13(&distance_enc, num_distance_codes,
      mb->distance_split.num_types, mb->distance_split.types,
      mb->distance_split.lengths, mb->distance_split.num_blocks);

  FUNC4(&literal_enc, tree, storage_ix, storage);
  FUNC4(&command_enc, tree, storage_ix, storage);
  FUNC4(
      &distance_enc, tree, storage_ix, storage);

  FUNC3(2, distance_postfix_bits, storage_ix, storage);
  FUNC3(4, num_direct_distance_codes >> distance_postfix_bits,
                  storage_ix, storage);
  for (i = 0; i < mb->literal_split.num_types; ++i) {
    FUNC3(2, literal_context_mode, storage_ix, storage);
  }

  if (mb->literal_context_map_size == 0) {
    FUNC19(mb->literal_histograms_size,
        BROTLI_LITERAL_CONTEXT_BITS, tree, storage_ix, storage);
  } else {
    FUNC12(m,
        mb->literal_context_map, mb->literal_context_map_size,
        mb->literal_histograms_size, tree, storage_ix, storage);
    if (FUNC2(m)) return;
  }

  if (mb->distance_context_map_size == 0) {
    FUNC19(mb->distance_histograms_size,
        BROTLI_DISTANCE_CONTEXT_BITS, tree, storage_ix, storage);
  } else {
    FUNC12(m,
        mb->distance_context_map, mb->distance_context_map_size,
        mb->distance_histograms_size, tree, storage_ix, storage);
    if (FUNC2(m)) return;
  }

  FUNC7(m, &literal_enc, mb->literal_histograms,
      mb->literal_histograms_size, tree, storage_ix, storage);
  if (FUNC2(m)) return;
  FUNC5(m, &command_enc, mb->command_histograms,
      mb->command_histograms_size, tree, storage_ix, storage);
  if (FUNC2(m)) return;
  FUNC6(m, &distance_enc, mb->distance_histograms,
      mb->distance_histograms_size, tree, storage_ix, storage);
  if (FUNC2(m)) return;
  FUNC1(m, tree);

  for (i = 0; i < n_commands; ++i) {
    const Command cmd = commands[i];
    size_t cmd_code = cmd.cmd_prefix_;
    FUNC17(&command_enc, cmd_code, storage_ix, storage);
    FUNC15(&cmd, storage_ix, storage);
    if (mb->literal_context_map_size == 0) {
      size_t j;
      for (j = cmd.insert_len_; j != 0; --j) {
        FUNC17(&literal_enc, input[pos & mask], storage_ix, storage);
        ++pos;
      }
    } else {
      size_t j;
      for (j = cmd.insert_len_; j != 0; --j) {
        size_t context = FUNC11(prev_byte, prev_byte2, literal_context_mode);
        uint8_t literal = input[pos & mask];
        FUNC18(&literal_enc, literal, context,
            mb->literal_context_map, storage_ix, storage,
            BROTLI_LITERAL_CONTEXT_BITS);
        prev_byte2 = prev_byte;
        prev_byte = literal;
        ++pos;
      }
    }
    pos += FUNC9(&cmd);
    if (FUNC9(&cmd)) {
      prev_byte2 = input[(pos - 2) & mask];
      prev_byte = input[(pos - 1) & mask];
      if (cmd.cmd_prefix_ >= 128) {
        size_t dist_code = cmd.dist_prefix_;
        uint32_t distnumextra = cmd.dist_extra_ >> 24;
        uint64_t distextra = cmd.dist_extra_ & 0xffffff;
        if (mb->distance_context_map_size == 0) {
          FUNC17(&distance_enc, dist_code, storage_ix, storage);
        } else {
          size_t context = FUNC10(&cmd);
          FUNC18(&distance_enc, dist_code, context,
              mb->distance_context_map, storage_ix, storage,
              BROTLI_DISTANCE_CONTEXT_BITS);
        }
        FUNC3(distnumextra, distextra, storage_ix, storage);
      }
    }
  }
  FUNC8(m, &distance_enc);
  FUNC8(m, &command_enc);
  FUNC8(m, &literal_enc);
  if (is_last) {
    FUNC14(storage_ix, storage);
  }
}