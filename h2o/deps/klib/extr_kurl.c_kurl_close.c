
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fd; struct TYPE_4__* buf; scalar_t__ hdr; int multi; int curl; } ;
typedef TYPE_1__ kurl_t ;


 int close (scalar_t__) ;
 int curl_easy_cleanup (int ) ;
 int curl_multi_cleanup (int ) ;
 int curl_multi_remove_handle (int ,int ) ;
 int curl_slist_free_all (scalar_t__) ;
 int free (TYPE_1__*) ;

int kurl_close(kurl_t *ku)
{
 if (ku == 0) return 0;
 if (ku->fd < 0) {
  curl_multi_remove_handle(ku->multi, ku->curl);
  curl_easy_cleanup(ku->curl);
  curl_multi_cleanup(ku->multi);
  if (ku->hdr) curl_slist_free_all(ku->hdr);
 } else close(ku->fd);
 free(ku->buf);
 free(ku);
 return 0;
}
