
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_2__ {scalar_t__ l_buf; scalar_t__ m_buf; scalar_t__ buf; } ;
typedef TYPE_1__ kurl_t ;


 size_t CURL_WRITEFUNC_PAUSE ;
 int memcpy (scalar_t__,char*,scalar_t__) ;

__attribute__((used)) static size_t write_cb(char *ptr, size_t size, size_t nmemb, void *data)
{
 kurl_t *ku = (kurl_t*)data;
 ssize_t nbytes = size * nmemb;
 if (nbytes + ku->l_buf > ku->m_buf)
  return CURL_WRITEFUNC_PAUSE;
 memcpy(ku->buf + ku->l_buf, ptr, nbytes);
 ku->l_buf += nbytes;
 return nbytes;
}
