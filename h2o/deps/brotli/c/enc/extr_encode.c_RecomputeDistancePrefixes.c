
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {int cmd_prefix_; int dist_extra_; int dist_prefix_; } ;
typedef TYPE_1__ Command ;


 scalar_t__ CommandCopyLen (TYPE_1__*) ;
 int CommandRestoreDistanceCode (TYPE_1__*) ;
 int PrefixEncodeCopyDistance (int ,scalar_t__,scalar_t__,int *,int *) ;

__attribute__((used)) static void RecomputeDistancePrefixes(Command* cmds,
                                      size_t num_commands,
                                      uint32_t num_direct_distance_codes,
                                      uint32_t distance_postfix_bits) {
  size_t i;
  if (num_direct_distance_codes == 0 && distance_postfix_bits == 0) {
    return;
  }
  for (i = 0; i < num_commands; ++i) {
    Command* cmd = &cmds[i];
    if (CommandCopyLen(cmd) && cmd->cmd_prefix_ >= 128) {
      PrefixEncodeCopyDistance(CommandRestoreDistanceCode(cmd),
                               num_direct_distance_codes,
                               distance_postfix_bits,
                               &cmd->dist_prefix_,
                               &cmd->dist_extra_);
    }
  }
}
