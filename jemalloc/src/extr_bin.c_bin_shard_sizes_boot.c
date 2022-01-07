
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int N_BIN_SHARDS_DEFAULT ;
 unsigned int SC_NBINS ;

void
bin_shard_sizes_boot(unsigned bin_shard_sizes[SC_NBINS]) {

 for (unsigned i = 0; i < SC_NBINS; i++) {
  bin_shard_sizes[i] = N_BIN_SHARDS_DEFAULT;
 }
}
