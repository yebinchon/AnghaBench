
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xkb_keysym_t ;
typedef int str ;
struct TYPE_3__ {scalar_t__ next_state; } ;
typedef TYPE_1__ cmdp_token ;
typedef scalar_t__ cmdp_state ;


 int EXIT_FAILURE ;
 scalar_t__ __CALL ;
 int atoi (char*) ;
 int clear_stack () ;
 int errx (int,char*,int const) ;
 int free (char*) ;
 char* get_string (char*) ;
 int keysym_used_on_other_key (int const,int) ;
 int printf (char*,int,int) ;
 int sasprintf (char**,char*,char*,char*,char*,char*,char*) ;
 char* sstrdup (char const*) ;
 scalar_t__ state ;
 scalar_t__* statelist ;
 int statelist_idx ;
 char* strchr (char*,char) ;
 int * strstr (char const*,char*) ;
 int xkb_keymap ;
 int xkb_keymap_key_get_syms_by_level (int ,int,int ,int,int const**) ;
 int xkb_keysym_get_name (int const,char*,int) ;

__attribute__((used)) static char *next_state(const cmdp_token *token) {
    cmdp_state _next_state = token->next_state;

    if (token->next_state == __CALL) {
        const char *modifiers = get_string("modifiers");
        int keycode = atoi(get_string("key"));
        int level = 0;
        if (modifiers != ((void*)0) &&
            strstr(modifiers, "Shift") != ((void*)0)) {




            level = 1;
            const xkb_keysym_t *syms;
            int num = xkb_keymap_key_get_syms_by_level(xkb_keymap, keycode, 0, 0, &syms);
            if (num == 0)
                errx(1, "xkb_keymap_key_get_syms_by_level returned no symbols for keycode %d", keycode);
            if (!keysym_used_on_other_key(syms[0], keycode))
                level = 0;
        }

        const xkb_keysym_t *syms;
        int num = xkb_keymap_key_get_syms_by_level(xkb_keymap, keycode, 0, level, &syms);
        if (num == 0)
            errx(1, "xkb_keymap_key_get_syms_by_level returned no symbols for keycode %d", keycode);
        if (num > 1)
            printf("xkb_keymap_key_get_syms_by_level (keycode = %d) returned %d symbolsinstead of 1, using only the first one.\n", keycode, num);

        char str[4096];
        if (xkb_keysym_get_name(syms[0], str, sizeof(str)) == -1)
            errx(EXIT_FAILURE, "xkb_keysym_get_name(%u) failed", syms[0]);
        const char *release = get_string("release");
        char *res;
        char *modrep = (modifiers == ((void*)0) ? sstrdup("") : sstrdup(modifiers));
        char *comma;
        while ((comma = strchr(modrep, ',')) != ((void*)0)) {
            *comma = '+';
        }
        sasprintf(&res, "bindsym %s%s%s %s%s\n", (modifiers == ((void*)0) ? "" : modrep), (modifiers == ((void*)0) ? "" : "+"), str, (release == ((void*)0) ? "" : release), get_string("command"));
        clear_stack();
        free(modrep);
        return res;
    }

    state = _next_state;



    for (int i = 0; i < statelist_idx; i++) {
        if (statelist[i] != _next_state)
            continue;
        statelist_idx = i + 1;
        return ((void*)0);
    }


    statelist[statelist_idx++] = _next_state;
    return ((void*)0);
}
