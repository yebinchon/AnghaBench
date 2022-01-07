
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int shortcut; } ;
struct TYPE_8__ {size_t insert_length; TYPE_1__ u; } ;
typedef TYPE_2__ ZopfliNode ;


 size_t ZopfliNodeCopyDistance (TYPE_2__ const*) ;
 size_t ZopfliNodeCopyLength (TYPE_2__ const*) ;
 scalar_t__ ZopfliNodeDistanceCode (TYPE_2__ const*) ;

__attribute__((used)) static uint32_t ComputeDistanceShortcut(const size_t block_start,
                                        const size_t pos,
                                        const size_t max_backward,
                                        const size_t gap,
                                        const ZopfliNode* nodes) {
  const size_t clen = ZopfliNodeCopyLength(&nodes[pos]);
  const size_t ilen = nodes[pos].insert_length;
  const size_t dist = ZopfliNodeCopyDistance(&nodes[pos]);





  if (pos == 0) {
    return 0;
  } else if (dist + clen <= block_start + pos + gap &&
             dist <= max_backward + gap &&
             ZopfliNodeDistanceCode(&nodes[pos]) > 0) {
    return (uint32_t)pos;
  } else {
    return nodes[pos - clen - ilen].u.shortcut;
  }
}
