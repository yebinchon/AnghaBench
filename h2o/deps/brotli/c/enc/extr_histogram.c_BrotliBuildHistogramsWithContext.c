
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {size_t type_; } ;
struct TYPE_8__ {int cmd_prefix_; size_t insert_len_; int dist_prefix_; } ;
typedef int HistogramLiteral ;
typedef int HistogramDistance ;
typedef int HistogramCommand ;
typedef int ContextType ;
typedef TYPE_1__ Command ;
typedef TYPE_2__ BlockSplitIterator ;
typedef int BlockSplit ;


 size_t BROTLI_DISTANCE_CONTEXT_BITS ;
 size_t BROTLI_LITERAL_CONTEXT_BITS ;
 int BlockSplitIteratorNext (TYPE_2__*) ;
 scalar_t__ CommandCopyLen (TYPE_1__ const*) ;
 size_t CommandDistanceContext (TYPE_1__ const*) ;
 size_t Context (int ,int ,int const) ;
 int HistogramAddCommand (int *,int) ;
 int HistogramAddDistance (int *,int ) ;
 int HistogramAddLiteral (int *,int const) ;
 int InitBlockSplitIterator (TYPE_2__*,int const*) ;

void BrotliBuildHistogramsWithContext(
    const Command* cmds, const size_t num_commands,
    const BlockSplit* literal_split, const BlockSplit* insert_and_copy_split,
    const BlockSplit* dist_split, const uint8_t* ringbuffer, size_t start_pos,
    size_t mask, uint8_t prev_byte, uint8_t prev_byte2,
    const ContextType* context_modes, HistogramLiteral* literal_histograms,
    HistogramCommand* insert_and_copy_histograms,
    HistogramDistance* copy_dist_histograms) {
  size_t pos = start_pos;
  BlockSplitIterator literal_it;
  BlockSplitIterator insert_and_copy_it;
  BlockSplitIterator dist_it;
  size_t i;

  InitBlockSplitIterator(&literal_it, literal_split);
  InitBlockSplitIterator(&insert_and_copy_it, insert_and_copy_split);
  InitBlockSplitIterator(&dist_it, dist_split);
  for (i = 0; i < num_commands; ++i) {
    const Command* cmd = &cmds[i];
    size_t j;
    BlockSplitIteratorNext(&insert_and_copy_it);
    HistogramAddCommand(&insert_and_copy_histograms[insert_and_copy_it.type_],
        cmd->cmd_prefix_);
    for (j = cmd->insert_len_; j != 0; --j) {
      size_t context;
      BlockSplitIteratorNext(&literal_it);
      context = context_modes ?
          ((literal_it.type_ << BROTLI_LITERAL_CONTEXT_BITS) +
              Context(prev_byte, prev_byte2, context_modes[literal_it.type_])) :
          literal_it.type_;
      HistogramAddLiteral(&literal_histograms[context],
          ringbuffer[pos & mask]);
      prev_byte2 = prev_byte;
      prev_byte = ringbuffer[pos & mask];
      ++pos;
    }
    pos += CommandCopyLen(cmd);
    if (CommandCopyLen(cmd)) {
      prev_byte2 = ringbuffer[(pos - 2) & mask];
      prev_byte = ringbuffer[(pos - 1) & mask];
      if (cmd->cmd_prefix_ >= 128) {
        size_t context;
        BlockSplitIteratorNext(&dist_it);
        context = (dist_it.type_ << BROTLI_DISTANCE_CONTEXT_BITS) +
            CommandDistanceContext(cmd);
        HistogramAddDistance(&copy_dist_histograms[context],
            cmd->dist_prefix_);
      }
    }
  }
}
