
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagerange_state {int not_ram; unsigned long cur_pfn; int ram; } ;



__attribute__((used)) static int
pagerange_is_ram_callback(unsigned long initial_pfn, unsigned long total_nr_pages, void *arg)
{
 struct pagerange_state *state = arg;

 state->not_ram |= initial_pfn > state->cur_pfn;
 state->ram |= total_nr_pages > 0;
 state->cur_pfn = initial_pfn + total_nr_pages;

 return state->ram && state->not_ram;
}
