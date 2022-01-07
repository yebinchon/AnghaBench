
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int extra; int rates_len; int len; scalar_t__ str; scalar_t__ mask; scalar_t__ rates; } ;


 int FLAG_DELETED ;
 int del_items ;
 int deleted_text_bytes ;
 struct item* get_item_f (long long,int ) ;
 int zzfree (scalar_t__,int) ;

__attribute__((used)) static int delete_item (long long item_id) {
  struct item *I = get_item_f (item_id, 0);
  if (!I || (I->extra & FLAG_DELETED)) { return 0; }
  I->extra |= FLAG_DELETED;
  zzfree (I->rates, I->rates_len * 4);
  I->rates = 0;
  I->mask = 0;
  I->rates_len = 0;
  zzfree (I->str, I->len+1);
  deleted_text_bytes += I->len;
  I->len = 0;
  I->str = 0;
  del_items++;
  return 1;
}
