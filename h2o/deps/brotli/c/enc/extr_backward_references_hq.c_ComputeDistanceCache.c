
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t shortcut; } ;
struct TYPE_7__ {size_t insert_length; TYPE_1__ u; } ;
typedef TYPE_2__ ZopfliNode ;


 size_t ZopfliNodeCopyDistance (TYPE_2__ const*) ;
 size_t ZopfliNodeCopyLength (TYPE_2__ const*) ;

__attribute__((used)) static void ComputeDistanceCache(const size_t pos,
                                 const int* starting_dist_cache,
                                 const ZopfliNode* nodes,
                                 int* dist_cache) {
  int idx = 0;
  size_t p = nodes[pos].u.shortcut;
  while (idx < 4 && p > 0) {
    const size_t ilen = nodes[p].insert_length;
    const size_t clen = ZopfliNodeCopyLength(&nodes[p]);
    const size_t dist = ZopfliNodeCopyDistance(&nodes[p]);
    dist_cache[idx++] = (int)dist;

    p = nodes[p - clen - ilen].u.shortcut;
  }
  for (; idx < 4; ++idx) {
    dist_cache[idx] = *starting_dist_cache++;
  }
}
