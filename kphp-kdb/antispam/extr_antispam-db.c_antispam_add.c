
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pattern_t ;
struct TYPE_4__ {int id; } ;
typedef TYPE_1__ antispam_pattern_t ;


 int FALSE ;
 int add_unsafe (TYPE_1__,char const*) ;
 int antispam_del_unsafe (int ,int *) ;
 int id_to_pattern ;
 int * id_to_pattern_find (int ,int ) ;

bool antispam_add (antispam_pattern_t p, const char *s, bool replace) {
  pattern_t *pattern = id_to_pattern_find (id_to_pattern, p.id);
  if (pattern != 0) {
    if (!replace) {
      return FALSE;
    }
    antispam_del_unsafe (p.id, pattern);
  }
  return add_unsafe (p, s);
}
