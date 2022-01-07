
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct locfile {int dummy; } ;
struct TYPE_8__ {scalar_t__ start; scalar_t__ end; } ;
typedef TYPE_1__ location ;
struct TYPE_9__ {int locfile; TYPE_1__ source; struct TYPE_9__* next; } ;
typedef TYPE_2__ inst ;
struct TYPE_10__ {TYPE_2__* first; } ;
typedef TYPE_3__ block ;
struct TYPE_11__ {scalar_t__ start; scalar_t__ end; } ;


 TYPE_7__ UNKNOWN_LOCATION ;
 int locfile_retain (struct locfile*) ;

block gen_location(location loc, struct locfile* l, block b) {
  for (inst* i = b.first; i; i = i->next) {
    if (i->source.start == UNKNOWN_LOCATION.start &&
        i->source.end == UNKNOWN_LOCATION.end) {
      i->source = loc;
      i->locfile = locfile_retain(l);
    }
  }
  return b;
}
