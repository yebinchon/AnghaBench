
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int idx; TYPE_2__* items; } ;
struct TYPE_6__ {TYPE_1__* metrics; } ;
struct TYPE_5__ {int data; } ;
typedef TYPE_3__ GHolder ;


 int KEY_NOT_FOUND ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
get_item_idx_in_holder (GHolder * holder, const char *k)
{
  int i;
  if (holder == ((void*)0))
    return KEY_NOT_FOUND;
  if (holder->idx == 0)
    return KEY_NOT_FOUND;
  if (k == ((void*)0) || *k == '\0')
    return KEY_NOT_FOUND;

  for (i = 0; i < holder->idx; i++) {
    if (strcmp (k, holder->items[i].metrics->data) == 0)
      return i;
  }

  return KEY_NOT_FOUND;
}
