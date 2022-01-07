
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int URLContext ;
typedef int AVDictionary ;


 int av_dict_free (int **) ;
 int av_dict_set_int (int **,char*,int,int ) ;
 int ijkurlhook_reconnect (int *,int *) ;

__attribute__((used)) static int ijkhttphook_reconnect_at(URLContext *h, int64_t offset)
{
    int ret = 0;
    AVDictionary *extra_opts = ((void*)0);

    av_dict_set_int(&extra_opts, "offset", offset, 0);
    av_dict_set_int(&extra_opts, "dns_cache_clear", 1, 0);
    ret = ijkurlhook_reconnect(h, extra_opts);
    av_dict_free(&extra_opts);
    return ret;
}
