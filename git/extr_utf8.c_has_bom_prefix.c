
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (char const*,char const*,size_t) ;

__attribute__((used)) static int has_bom_prefix(const char *data, size_t len,
     const char *bom, size_t bom_len)
{
 return data && bom && (len >= bom_len) && !memcmp(data, bom, bom_len);
}
