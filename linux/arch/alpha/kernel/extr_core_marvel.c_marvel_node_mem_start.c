
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned long
marvel_node_mem_start(int nid)
{
 unsigned long pa;

 pa = (nid & 0x3) | ((nid & (0x1f << 2)) << 1);
 pa <<= 34;

 return pa;
}
