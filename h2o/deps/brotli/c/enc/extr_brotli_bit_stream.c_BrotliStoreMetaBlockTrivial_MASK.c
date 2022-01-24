#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_12__ {int /*<<< orphan*/  data_; } ;
struct TYPE_11__ {int /*<<< orphan*/  data_; } ;
struct TYPE_10__ {int /*<<< orphan*/  data_; } ;
typedef  int /*<<< orphan*/  MemoryManager ;
typedef  TYPE_1__ HistogramLiteral ;
typedef  TYPE_2__ HistogramDistance ;
typedef  TYPE_3__ HistogramCommand ;
typedef  int /*<<< orphan*/  Command ;
typedef  scalar_t__ BROTLI_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int BROTLI_NUM_COMMAND_SYMBOLS ; 
 int BROTLI_NUM_LITERAL_SYMBOLS ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,size_t,size_t,int /*<<< orphan*/  const*,size_t,TYPE_1__*,TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int HuffmanTree ; 
 int /*<<< orphan*/  FUNC9 (size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_HUFFMAN_TREE_SIZE ; 
 int SIMPLE_DISTANCE_ALPHABET_SIZE ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,size_t,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*,size_t,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *) ; 
 int tree ; 

void FUNC12(MemoryManager* m,
                                 const uint8_t* input,
                                 size_t start_pos,
                                 size_t length,
                                 size_t mask,
                                 BROTLI_BOOL is_last,
                                 const Command *commands,
                                 size_t n_commands,
                                 size_t *storage_ix,
                                 uint8_t *storage) {
  HistogramLiteral lit_histo;
  HistogramCommand cmd_histo;
  HistogramDistance dist_histo;
  uint8_t lit_depth[BROTLI_NUM_LITERAL_SYMBOLS];
  uint16_t lit_bits[BROTLI_NUM_LITERAL_SYMBOLS];
  uint8_t cmd_depth[BROTLI_NUM_COMMAND_SYMBOLS];
  uint16_t cmd_bits[BROTLI_NUM_COMMAND_SYMBOLS];
  uint8_t dist_depth[SIMPLE_DISTANCE_ALPHABET_SIZE];
  uint16_t dist_bits[SIMPLE_DISTANCE_ALPHABET_SIZE];
  HuffmanTree* tree;

  FUNC10(is_last, length, storage_ix, storage);

  FUNC8(&lit_histo);
  FUNC6(&cmd_histo);
  FUNC7(&dist_histo);

  FUNC5(input, start_pos, mask, commands, n_commands,
                  &lit_histo, &cmd_histo, &dist_histo);

  FUNC3(13, 0, storage_ix, storage);

  tree = FUNC0(m, HuffmanTree, MAX_HUFFMAN_TREE_SIZE);
  if (FUNC2(m)) return;
  FUNC4(lit_histo.data_, BROTLI_NUM_LITERAL_SYMBOLS, tree,
                           lit_depth, lit_bits,
                           storage_ix, storage);
  FUNC4(cmd_histo.data_, BROTLI_NUM_COMMAND_SYMBOLS, tree,
                           cmd_depth, cmd_bits,
                           storage_ix, storage);
  FUNC4(dist_histo.data_, SIMPLE_DISTANCE_ALPHABET_SIZE,
                           tree,
                           dist_depth, dist_bits,
                           storage_ix, storage);
  FUNC1(m, tree);
  FUNC11(input, start_pos, mask, commands,
                            n_commands, lit_depth, lit_bits,
                            cmd_depth, cmd_bits,
                            dist_depth, dist_bits,
                            storage_ix, storage);
  if (is_last) {
    FUNC9(storage_ix, storage);
  }
}