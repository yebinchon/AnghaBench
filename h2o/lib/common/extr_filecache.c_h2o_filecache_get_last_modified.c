
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tm {int dummy; } ;
struct TYPE_6__ {char* str; struct tm gm; } ;
struct TYPE_5__ {int st_mtime; } ;
struct TYPE_7__ {int fd; TYPE_2__ _last_modified; TYPE_1__ st; } ;
typedef TYPE_3__ h2o_filecache_ref_t ;


 scalar_t__ H2O_TIMESTR_RFC1123_LEN ;
 int assert (int) ;
 int gmtime_r (int *,struct tm*) ;
 int h2o_time2str_rfc1123 (char*,struct tm*) ;
 int memcpy (char*,char*,scalar_t__) ;

struct tm *h2o_filecache_get_last_modified(h2o_filecache_ref_t *ref, char *outbuf)
{
    assert(ref->fd != -1);
    if (ref->_last_modified.str[0] == '\0') {
        gmtime_r(&ref->st.st_mtime, &ref->_last_modified.gm);
        h2o_time2str_rfc1123(ref->_last_modified.str, &ref->_last_modified.gm);
    }
    if (outbuf != ((void*)0))
        memcpy(outbuf, ref->_last_modified.str, H2O_TIMESTR_RFC1123_LEN + 1);
    return &ref->_last_modified.gm;
}
