
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct index_item {scalar_t__ mask; scalar_t__ rates_len; scalar_t__ rates; } ;
struct TYPE_3__ {scalar_t__ mask; scalar_t__ rates_len; scalar_t__ rates; } ;
typedef TYPE_1__ item_t ;



__attribute__((used)) static void move_item_rates (item_t *dst, struct index_item *src) {
  dst->rates = src->rates;
  dst->rates_len = src->rates_len;
  dst->mask = src->mask;

  src->rates = 0;
  src->rates_len = 0;
  src->mask = 0;
}
