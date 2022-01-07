
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int IjkURLContext ;
typedef int IjkAVDictionary ;


 int ijk_av_dict_free (int **) ;
 int ijk_av_dict_set_int (int **,char*,int,int ) ;
 int ijkio_urlhook_reconnect (int *,int *) ;

__attribute__((used)) static int ijkio_httphook_reconnect_at(IjkURLContext *h, int64_t offset)
{
    int ret = 0;
    IjkAVDictionary *extra_opts = ((void*)0);

    ijk_av_dict_set_int(&extra_opts, "offset", offset, 0);
    ijk_av_dict_set_int(&extra_opts, "dns_cache_clear", 1, 0);
    ret = ijkio_urlhook_reconnect(h, extra_opts);
    ijk_av_dict_free(&extra_opts);
    return ret;
}
