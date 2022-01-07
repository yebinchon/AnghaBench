
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct strbuf {int dummy; } ;


 int get_response_line () ;
 int ls_from_rev (int ,char const*) ;
 int parse_ls_response (int ,int *,struct strbuf*) ;

int fast_export_ls_rev(uint32_t rev, const char *path,
    uint32_t *mode, struct strbuf *dataref)
{
 ls_from_rev(rev, path);
 return parse_ls_response(get_response_line(), mode, dataref);
}
