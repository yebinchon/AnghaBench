
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t ssize_t ;
struct TYPE_4__ {scalar_t__ l_buf; size_t p_buf; size_t buf; } ;
typedef TYPE_1__ kurl_t ;


 int fill_buffer (TYPE_1__*) ;
 int memcpy (int *,size_t,size_t) ;

ssize_t kurl_read(kurl_t *ku, void *buf, size_t nbytes)
{
 ssize_t rest = nbytes;
 if (ku->l_buf == 0) return 0;
 while (rest) {
  if (ku->l_buf - ku->p_buf >= rest) {
   if (buf) memcpy((uint8_t*)buf + (nbytes - rest), ku->buf + ku->p_buf, rest);
   ku->p_buf += rest;
   rest = 0;
  } else {
   int ret;
   if (buf && ku->l_buf > ku->p_buf)
    memcpy((uint8_t*)buf + (nbytes - rest), ku->buf + ku->p_buf, ku->l_buf - ku->p_buf);
   rest -= ku->l_buf - ku->p_buf;
   ku->p_buf = ku->l_buf;
   ret = fill_buffer(ku);
   if (ret <= 0) break;
  }
 }
 return nbytes - rest;
}
