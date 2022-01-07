
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int layout_t ;


 int L_DEFAULT ;
 int L_SPLITH ;
 int L_SPLITV ;
 int L_STACKED ;
 int L_TABBED ;
 scalar_t__ strcasecmp (char const*,char*) ;
 scalar_t__ strcmp (char const*,char*) ;

bool layout_from_name(const char *layout_str, layout_t *out) {
    if (strcmp(layout_str, "default") == 0) {
        *out = L_DEFAULT;
        return 1;
    } else if (strcasecmp(layout_str, "stacked") == 0 ||
               strcasecmp(layout_str, "stacking") == 0) {
        *out = L_STACKED;
        return 1;
    } else if (strcasecmp(layout_str, "tabbed") == 0) {
        *out = L_TABBED;
        return 1;
    } else if (strcasecmp(layout_str, "splitv") == 0) {
        *out = L_SPLITV;
        return 1;
    } else if (strcasecmp(layout_str, "splith") == 0) {
        *out = L_SPLITH;
        return 1;
    }

    return 0;
}
