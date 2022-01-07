
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ off0; scalar_t__ l_buf; scalar_t__ p_buf; int curl; int multi; int fd; } ;
typedef TYPE_1__ kurl_t ;


 int CURLOPT_RESUME_FROM ;
 int SEEK_SET ;
 int curl_easy_setopt (int ,int ,scalar_t__) ;
 int curl_multi_add_handle (int ,int ) ;
 int curl_multi_remove_handle (int ,int ) ;
 scalar_t__ kurl_isfile (TYPE_1__*) ;
 scalar_t__ lseek (int ,scalar_t__,int ) ;

__attribute__((used)) static int prepare(kurl_t *ku, int do_seek)
{
 if (kurl_isfile(ku)) {
  if (do_seek && lseek(ku->fd, ku->off0, SEEK_SET) != ku->off0)
   return -1;
 } else {
  int rc;
  rc = curl_multi_remove_handle(ku->multi, ku->curl);
  rc = curl_easy_setopt(ku->curl, CURLOPT_RESUME_FROM, ku->off0);
  rc = curl_multi_add_handle(ku->multi, ku->curl);
 }
 ku->p_buf = ku->l_buf = 0;
 return 0;
}
