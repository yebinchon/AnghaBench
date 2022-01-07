
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int fd; int m_buf; int * buf; } ;
typedef TYPE_1__ kurl_t ;


 int KU_DEF_BUFLEN ;
 scalar_t__ calloc (int,int) ;
 scalar_t__ fill_buffer (TYPE_1__*) ;
 int kurl_close (TYPE_1__*) ;
 scalar_t__ prepare (TYPE_1__*,int ) ;

kurl_t *kurl_dopen(int fd)
{
 kurl_t *ku;
 ku = (kurl_t*)calloc(1, sizeof(kurl_t));
 ku->fd = fd;
 ku->m_buf = KU_DEF_BUFLEN;
 ku->buf = (uint8_t*)calloc(ku->m_buf, 1);
 if (prepare(ku, 0) < 0 || fill_buffer(ku) <= 0) {
  kurl_close(ku);
  return 0;
 }
 return ku;
}
