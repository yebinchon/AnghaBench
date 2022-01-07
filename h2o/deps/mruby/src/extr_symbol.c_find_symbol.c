
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {int prev; int name; int len; } ;
typedef TYPE_1__ symbol_name ;
typedef size_t mrb_sym ;
struct TYPE_5__ {size_t* symhash; TYPE_1__* symtbl; } ;
typedef TYPE_2__ mrb_state ;


 scalar_t__ memcmp (int ,char const*,int ) ;
 size_t sym_inline_pack (char const*,int ) ;

__attribute__((used)) static mrb_sym
find_symbol(mrb_state *mrb, const char *name, uint16_t len, uint8_t hash)
{
  mrb_sym i;
  symbol_name *sname;



  i = sym_inline_pack(name, len);
  if (i > 0) return i;


  i = mrb->symhash[hash];
  if (i == 0) return 0;
  do {
    sname = &mrb->symtbl[i];
    if (sname->len == len && memcmp(sname->name, name, len) == 0) {
      return i<<1;
    }
    if (sname->prev == 0xff) {
      i -= 0xff;
      sname = &mrb->symtbl[i];
      while (mrb->symtbl < sname) {
        if (sname->len == len && memcmp(sname->name, name, len) == 0) {
          return (mrb_sym)(sname - mrb->symtbl)<<1;
        }
        sname--;
      }
      return 0;
    }
    i -= sname->prev;
  } while (sname->prev > 0);
  return 0;
}
