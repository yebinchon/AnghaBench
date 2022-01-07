
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pack_window {scalar_t__ offset; scalar_t__ len; } ;
typedef scalar_t__ off_t ;
struct TYPE_2__ {scalar_t__ rawsz; } ;


 TYPE_1__* the_hash_algo ;

__attribute__((used)) static int in_window(struct pack_window *win, off_t offset)
{






 off_t win_off = win->offset;
 return win_off <= offset
  && (offset + the_hash_algo->rawsz) <= (win_off + win->len);
}
