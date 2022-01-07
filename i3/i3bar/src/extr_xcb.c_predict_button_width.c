
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ws_min_width; } ;


 int MAX (int,int) ;
 TYPE_1__ config ;
 int logical_px (int) ;
 int ws_hoff_px ;

__attribute__((used)) static int predict_button_width(int name_width) {
    return MAX(name_width + 2 * logical_px(ws_hoff_px) + 2 * logical_px(1),
               logical_px(config.ws_min_width));
}
