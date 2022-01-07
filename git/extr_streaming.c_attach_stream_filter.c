
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stream_filter {int dummy; } ;
struct filtered_istream {scalar_t__ input_finished; scalar_t__ o_ptr; scalar_t__ o_end; scalar_t__ i_ptr; scalar_t__ i_end; struct stream_filter* filter; struct git_istream* upstream; } ;
struct TYPE_2__ {struct filtered_istream filtered; } ;
struct git_istream {int size; int * vtbl; TYPE_1__ u; } ;


 int filtered_vtbl ;
 struct git_istream* xmalloc (int) ;

__attribute__((used)) static struct git_istream *attach_stream_filter(struct git_istream *st,
      struct stream_filter *filter)
{
 struct git_istream *ifs = xmalloc(sizeof(*ifs));
 struct filtered_istream *fs = &(ifs->u.filtered);

 ifs->vtbl = &filtered_vtbl;
 fs->upstream = st;
 fs->filter = filter;
 fs->i_end = fs->i_ptr = 0;
 fs->o_end = fs->o_ptr = 0;
 fs->input_finished = 0;
 ifs->size = -1;
 return ifs;
}
