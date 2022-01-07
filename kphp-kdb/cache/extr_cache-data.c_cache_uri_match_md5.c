
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct cache_uri {scalar_t__ uri_md5_h0; scalar_t__ data; } ;
struct TYPE_4__ {scalar_t__* h; } ;
typedef TYPE_1__ md5_t ;


 int uri2md5 (scalar_t__,TYPE_1__*) ;
 int uri2md5_extra_calls ;
 scalar_t__ uri_off ;

__attribute__((used)) static int cache_uri_match_md5 (const struct cache_uri *U, const md5_t *uri_md5, int len) {
  if (U->uri_md5_h0 == uri_md5->h[0]) {
    if (len == 8) {
      return 1;
    }
    md5_t m;
    uri2md5 (U->data + uri_off, &m);
    uri2md5_extra_calls++;
    return (m.h[1] == uri_md5->h[1]);
  }
  return 0;
}
