
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FREE (int ) ;
 int LOG (char*,int,unsigned char const*) ;
 int last_key ;
 int memcpy (int ,unsigned char const*,size_t) ;
 scalar_t__ num_marks ;
 int parsing_deco_rect ;
 int parsing_focus ;
 int parsing_gaps ;
 int parsing_geometry ;
 int parsing_marks ;
 int parsing_rect ;
 int parsing_swallows ;
 int parsing_window_rect ;
 int scalloc (size_t,int) ;
 scalar_t__ strcasecmp (int ,char*) ;

__attribute__((used)) static int json_key(void *ctx, const unsigned char *val, size_t len) {
    LOG("key: %.*s\n", (int)len, val);
    FREE(last_key);
    last_key = scalloc(len + 1, 1);
    memcpy(last_key, val, len);
    if (strcasecmp(last_key, "swallows") == 0)
        parsing_swallows = 1;

    if (strcasecmp(last_key, "gaps") == 0)
        parsing_gaps = 1;

    if (strcasecmp(last_key, "rect") == 0)
        parsing_rect = 1;

    if (strcasecmp(last_key, "deco_rect") == 0)
        parsing_deco_rect = 1;

    if (strcasecmp(last_key, "window_rect") == 0)
        parsing_window_rect = 1;

    if (strcasecmp(last_key, "geometry") == 0)
        parsing_geometry = 1;

    if (strcasecmp(last_key, "focus") == 0)
        parsing_focus = 1;

    if (strcasecmp(last_key, "marks") == 0) {
        num_marks = 0;
        parsing_marks = 1;
    }

    return 1;
}
