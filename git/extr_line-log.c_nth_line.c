
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nth_line_cb {long lines; int* line_ends; TYPE_1__* spec; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int assert (int) ;

__attribute__((used)) static const char *nth_line(void *data, long line)
{
 struct nth_line_cb *d = data;
 assert(d && line <= d->lines);
 assert(d->spec && d->spec->data);

 if (line == 0)
  return (char *)d->spec->data;
 else
  return (char *)d->spec->data + d->line_ends[line] + 1;
}
