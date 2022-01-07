
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ next; } ;
struct TYPE_6__ {scalar_t__ insert_length; int length; TYPE_1__ u; } ;
typedef TYPE_2__ ZopfliNode ;


 scalar_t__ BROTLI_UINT32_MAX ;
 size_t ZopfliNodeCommandLength (TYPE_2__*) ;

__attribute__((used)) static size_t ComputeShortestPathFromNodes(size_t num_bytes,
    ZopfliNode* nodes) {
  size_t index = num_bytes;
  size_t num_commands = 0;
  while (nodes[index].insert_length == 0 && nodes[index].length == 1) --index;
  nodes[index].u.next = BROTLI_UINT32_MAX;
  while (index != 0) {
    size_t len = ZopfliNodeCommandLength(&nodes[index]);
    index -= len;
    nodes[index].u.next = (uint32_t)len;
    num_commands++;
  }
  return num_commands;
}
