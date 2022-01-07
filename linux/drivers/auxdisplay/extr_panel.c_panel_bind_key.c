
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int release_str; int repeat_str; int press_str; } ;
struct TYPE_4__ {TYPE_1__ kbd; } ;
struct logical_input {int rise_time; int fall_time; int list; TYPE_2__ u; int state; int type; int value; int mask; } ;


 int GFP_KERNEL ;
 int INPUT_ST_LOW ;
 int INPUT_TYPE_KBD ;
 int input_name2mask (char const*,int *,int *,int *,int *) ;
 int kfree (struct logical_input*) ;
 struct logical_input* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int logical_inputs ;
 int scan_mask_i ;
 int scan_mask_o ;
 int strncpy (int ,char const*,int) ;

__attribute__((used)) static struct logical_input *panel_bind_key(const char *name, const char *press,
         const char *repeat,
         const char *release)
{
 struct logical_input *key;

 key = kzalloc(sizeof(*key), GFP_KERNEL);
 if (!key)
  return ((void*)0);

 if (!input_name2mask(name, &key->mask, &key->value, &scan_mask_i,
        &scan_mask_o)) {
  kfree(key);
  return ((void*)0);
 }

 key->type = INPUT_TYPE_KBD;
 key->state = INPUT_ST_LOW;
 key->rise_time = 1;
 key->fall_time = 1;

 strncpy(key->u.kbd.press_str, press, sizeof(key->u.kbd.press_str));
 strncpy(key->u.kbd.repeat_str, repeat, sizeof(key->u.kbd.repeat_str));
 strncpy(key->u.kbd.release_str, release,
  sizeof(key->u.kbd.release_str));
 list_add(&key->list, &logical_inputs);
 return key;
}
