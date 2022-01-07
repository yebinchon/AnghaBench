
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {char* bar_fg; } ;
struct TYPE_4__ {TYPE_1__ colors; } ;


 int DLOG (char*,char const*) ;
 int XCB_ATOM_CARDINAL ;
 int XCB_PROP_MODE_REPLACE ;
 size_t _NET_SYSTEM_TRAY_COLORS ;
 int * atoms ;
 TYPE_2__ config ;
 int selwin ;
 int strtol (char*,int *,int) ;
 int xcb_change_property (int ,int ,int ,int ,int ,int,int,int const*) ;
 int xcb_connection ;

void init_tray_colors(void) {

    const char *bar_fg = (config.colors.bar_fg ? config.colors.bar_fg : "#FFFFFF");

    DLOG("Setting bar_fg = %s as _NET_SYSTEM_TRAY_COLORS\n", bar_fg);

    char strgroups[3][3] = {{bar_fg[1], bar_fg[2], '\0'},
                            {bar_fg[3], bar_fg[4], '\0'},
                            {bar_fg[5], bar_fg[6], '\0'}};
    const uint8_t r = strtol(strgroups[0], ((void*)0), 16);
    const uint8_t g = strtol(strgroups[1], ((void*)0), 16);
    const uint8_t b = strtol(strgroups[2], ((void*)0), 16);

    const uint16_t r16 = ((uint16_t)r << 8) | r;
    const uint16_t g16 = ((uint16_t)g << 8) | g;
    const uint16_t b16 = ((uint16_t)b << 8) | b;

    const uint32_t tray_colors[12] = {
        r16, g16, b16,
        r16, g16, b16,
        r16, g16, b16,
        r16, g16, b16,
    };

    xcb_change_property(xcb_connection,
                        XCB_PROP_MODE_REPLACE,
                        selwin,
                        atoms[_NET_SYSTEM_TRAY_COLORS],
                        XCB_ATOM_CARDINAL,
                        32,
                        12,
                        tray_colors);
}
