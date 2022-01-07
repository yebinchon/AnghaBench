
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int h2o_memis (char const*,size_t,char const*,size_t) ;

int h2o_filecache_compare_etag_strong(const char *tag1, size_t tag1_len, const char *tag2, size_t tag2_len)
{
    size_t i;


    if (tag1_len < sizeof("\"\""))
        return 0;
    if (tag1[0] != '"' || tag1[tag1_len - 1] != '"')
        return 0;
    for (i = 1; i < tag1_len - 1; i++) {
        if (tag1[i] < 0x21 || tag1[i] == '"')
            return 0;
    }
    return h2o_memis(tag1, tag1_len, tag2, tag2_len);
}
