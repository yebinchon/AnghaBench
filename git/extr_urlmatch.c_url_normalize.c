
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct url_info {int dummy; } ;


 char* url_normalize_1 (char const*,struct url_info*,int ) ;

char *url_normalize(const char *url, struct url_info *out_info)
{
 return url_normalize_1(url, out_info, 0);
}
