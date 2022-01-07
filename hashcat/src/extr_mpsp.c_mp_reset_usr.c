
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {int cs_buf; scalar_t__ cs_len; } ;
typedef TYPE_1__ cs_t ;


 int memset (int ,int ,int) ;

__attribute__((used)) static void mp_reset_usr (cs_t *mp_usr, const u32 userindex)
{
  mp_usr[userindex].cs_len = 0;

  memset (mp_usr[userindex].cs_buf, 0, sizeof (mp_usr[userindex].cs_buf));
}
