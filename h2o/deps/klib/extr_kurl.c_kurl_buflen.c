
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int l_buf; int m_buf; int * buf; } ;
typedef TYPE_1__ kurl_t ;


 int CURL_MAX_WRITE_SIZE ;
 int kroundup32 (int) ;
 int kurl_isfile (TYPE_1__*) ;
 scalar_t__ realloc (int *,int) ;

int kurl_buflen(kurl_t *ku, int len)
{
 if (len <= 0 || len < ku->l_buf) return ku->m_buf;
 if (!kurl_isfile(ku) && len < CURL_MAX_WRITE_SIZE * 2) return ku->m_buf;
 ku->m_buf = len;
 kroundup32(ku->m_buf);
 ku->buf = (uint8_t*)realloc(ku->buf, ku->m_buf);
 return ku->m_buf;
}
