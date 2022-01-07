
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int darrow; int uarrow; int check_selected; int check; int tag_key_selected; int tag_key; int tag_selected; int tag; int item_selected; int item; int menubox_border; int menubox; int position_indicator; int searchbox_border; int searchbox_title; int searchbox; int inputbox_border; int inputbox; int button_label_inactive; int button_label_active; int button_key_inactive; int button_key_active; int button_inactive; int button_active; int border; int title; int dialog; int shadow; int screen; } ;


 TYPE_1__ dlg ;
 int init_one_color (int *) ;

__attribute__((used)) static void init_dialog_colors(void)
{
 init_one_color(&dlg.screen);
 init_one_color(&dlg.shadow);
 init_one_color(&dlg.dialog);
 init_one_color(&dlg.title);
 init_one_color(&dlg.border);
 init_one_color(&dlg.button_active);
 init_one_color(&dlg.button_inactive);
 init_one_color(&dlg.button_key_active);
 init_one_color(&dlg.button_key_inactive);
 init_one_color(&dlg.button_label_active);
 init_one_color(&dlg.button_label_inactive);
 init_one_color(&dlg.inputbox);
 init_one_color(&dlg.inputbox_border);
 init_one_color(&dlg.searchbox);
 init_one_color(&dlg.searchbox_title);
 init_one_color(&dlg.searchbox_border);
 init_one_color(&dlg.position_indicator);
 init_one_color(&dlg.menubox);
 init_one_color(&dlg.menubox_border);
 init_one_color(&dlg.item);
 init_one_color(&dlg.item_selected);
 init_one_color(&dlg.tag);
 init_one_color(&dlg.tag_selected);
 init_one_color(&dlg.tag_key);
 init_one_color(&dlg.tag_key_selected);
 init_one_color(&dlg.check);
 init_one_color(&dlg.check_selected);
 init_one_color(&dlg.uarrow);
 init_one_color(&dlg.darrow);
}
