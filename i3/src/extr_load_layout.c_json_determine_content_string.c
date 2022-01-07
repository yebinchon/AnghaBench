
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DLOG (char*,int,unsigned char const*,int ) ;
 int JSON_CONTENT_WORKSPACE ;
 int content_level ;
 int content_result ;
 int last_key ;
 scalar_t__ strcasecmp (int ,char*) ;
 scalar_t__ strncasecmp (char const*,char*,size_t) ;

__attribute__((used)) static int json_determine_content_string(void *ctx, const unsigned char *val, size_t len) {
    if (strcasecmp(last_key, "type") != 0 || content_level > 1)
        return 1;

    DLOG("string = %.*s, last_key = %s\n", (int)len, val, last_key);
    if (strncasecmp((const char *)val, "workspace", len) == 0)
        content_result = JSON_CONTENT_WORKSPACE;
    return 0;
}
