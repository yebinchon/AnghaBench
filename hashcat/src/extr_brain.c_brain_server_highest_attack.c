
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_3__ {scalar_t__ short_cnt; scalar_t__ long_cnt; int * short_buf; int * long_buf; } ;
typedef TYPE_1__ brain_server_db_attack_t ;
typedef int brain_server_attack_short_t ;
typedef int brain_server_attack_long_t ;


 scalar_t__ MAX (scalar_t__,scalar_t__) ;
 scalar_t__ brain_server_highest_attack_long (int const*,scalar_t__ const,scalar_t__) ;
 scalar_t__ brain_server_highest_attack_short (int const*,scalar_t__ const,scalar_t__) ;

u64 brain_server_highest_attack (const brain_server_db_attack_t *buf)
{
  const brain_server_attack_long_t *long_buf = buf->long_buf;
  const brain_server_attack_short_t *short_buf = buf->short_buf;

  const u64 long_cnt = buf->long_cnt;
  const u64 short_cnt = buf->short_cnt;

  u64 highest_long = brain_server_highest_attack_long (long_buf, long_cnt, 0);
  u64 highest_short = brain_server_highest_attack_short (short_buf, short_cnt, 0);

  u64 highest = MAX (highest_long, highest_short);

  highest_long = brain_server_highest_attack_long (long_buf, long_cnt, highest);
  highest_short = brain_server_highest_attack_short (short_buf, short_cnt, highest);

  highest = MAX (highest_long, highest_short);

  return highest;
}
