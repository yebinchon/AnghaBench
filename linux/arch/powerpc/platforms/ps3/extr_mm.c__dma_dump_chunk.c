
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dma_chunk {int len; int bus_addr; int lpar_addr; TYPE_2__* region; } ;
struct TYPE_4__ {int offset; int len; int page_size; int bus_addr; TYPE_1__* dev; } ;
struct TYPE_3__ {int dev_id; int bus_id; } ;


 int DBG (char*,char const*,int,int ,...) ;

__attribute__((used)) static void _dma_dump_chunk (const struct dma_chunk* c, const char* func,
 int line)
{
 DBG("%s:%d: r.dev        %llu:%llu\n", func, line,
  c->region->dev->bus_id, c->region->dev->dev_id);
 DBG("%s:%d: r.bus_addr   %lxh\n", func, line, c->region->bus_addr);
 DBG("%s:%d: r.page_size  %u\n", func, line, c->region->page_size);
 DBG("%s:%d: r.len        %lxh\n", func, line, c->region->len);
 DBG("%s:%d: r.offset     %lxh\n", func, line, c->region->offset);
 DBG("%s:%d: c.lpar_addr  %lxh\n", func, line, c->lpar_addr);
 DBG("%s:%d: c.bus_addr   %lxh\n", func, line, c->bus_addr);
 DBG("%s:%d: c.len        %lxh\n", func, line, c->len);
}
