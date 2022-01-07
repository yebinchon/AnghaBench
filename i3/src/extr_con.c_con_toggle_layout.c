
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ layout_t ;
struct TYPE_6__ {scalar_t__ type; scalar_t__ layout; scalar_t__ last_split_layout; struct TYPE_6__* parent; } ;
typedef TYPE_1__ Con ;


 scalar_t__ CT_WORKSPACE ;
 int DLOG (char*,TYPE_1__*,char const*,TYPE_1__*) ;
 int ELOG (char*,char*) ;
 scalar_t__ L_DEFAULT ;
 scalar_t__ L_SPLITH ;
 scalar_t__ L_SPLITV ;
 scalar_t__ L_STACKED ;
 scalar_t__ L_TABBED ;
 int con_set_layout (TYPE_1__*,scalar_t__) ;
 int free (char*) ;
 int layout_from_name (char*,scalar_t__*) ;
 char* sstrdup (char const*) ;
 scalar_t__ strcasecmp (char const*,char*) ;
 scalar_t__ strstr (char const*,char const*) ;
 char* strtok (char*,char const*) ;

void con_toggle_layout(Con *con, const char *toggle_mode) {
    Con *parent = con;



    if (con->type != CT_WORKSPACE)
        parent = con->parent;
    DLOG("con_toggle_layout(%p, %s), parent = %p\n", con, toggle_mode, parent);

    const char delim[] = " ";

    if (strcasecmp(toggle_mode, "split") == 0 || strstr(toggle_mode, delim)) {


        layout_t new_layout = L_DEFAULT;
        bool current_layout_found = 0;
        char *tm_dup = sstrdup(toggle_mode);
        char *cur_tok = strtok(tm_dup, delim);

        for (layout_t layout; cur_tok != ((void*)0); cur_tok = strtok(((void*)0), delim)) {
            if (strcasecmp(cur_tok, "split") == 0) {



                if (parent->layout != L_SPLITH && parent->layout != L_SPLITV) {
                    layout = parent->last_split_layout;

                    if (layout == L_DEFAULT) {
                        layout = L_SPLITH;
                    }
                } else {
                    layout = (parent->layout == L_SPLITH) ? L_SPLITV : L_SPLITH;
                }
            } else {
                bool success = layout_from_name(cur_tok, &layout);
                if (!success || layout == L_DEFAULT) {
                    ELOG("The token '%s' was not recognized and has been skipped.\n", cur_tok);
                    continue;
                }
            }



            if (new_layout == L_DEFAULT) {
                new_layout = layout;
            }



            if (current_layout_found) {
                new_layout = layout;
                break;
            }

            if (parent->layout == layout) {
                current_layout_found = 1;
            }
        }
        free(tm_dup);

        if (new_layout != L_DEFAULT) {
            con_set_layout(con, new_layout);
        }
    } else if (strcasecmp(toggle_mode, "all") == 0 || strcasecmp(toggle_mode, "default") == 0) {
        if (parent->layout == L_STACKED)
            con_set_layout(con, L_TABBED);
        else if (parent->layout == L_TABBED) {
            if (strcasecmp(toggle_mode, "all") == 0)
                con_set_layout(con, L_SPLITH);
            else
                con_set_layout(con, parent->last_split_layout);
        } else if (parent->layout == L_SPLITH || parent->layout == L_SPLITV) {
            if (strcasecmp(toggle_mode, "all") == 0) {



                if (parent->layout == L_SPLITH)
                    con_set_layout(con, L_SPLITV);
                else
                    con_set_layout(con, L_STACKED);
            } else {
                con_set_layout(con, L_STACKED);
            }
        }
    }
}
