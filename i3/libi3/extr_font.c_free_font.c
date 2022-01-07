
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int info; int id; } ;
struct TYPE_5__ {int pango_desc; TYPE_1__ xcb; } ;
struct TYPE_6__ {int type; TYPE_2__ specific; int pattern; } ;





 int conn ;
 int free (int ) ;
 int pango_font_description_free (int ) ;
 TYPE_3__* savedFont ;
 int xcb_close_font (int ,int ) ;

void free_font(void) {

    if (savedFont == ((void*)0))
        return;

    free(savedFont->pattern);
    switch (savedFont->type) {
        case 130:

            break;
        case 128: {

            xcb_close_font(conn, savedFont->specific.xcb.id);
            free(savedFont->specific.xcb.info);
            break;
        }
        case 129:

            pango_font_description_free(savedFont->specific.pango_desc);
            break;
    }

    savedFont = ((void*)0);
}
