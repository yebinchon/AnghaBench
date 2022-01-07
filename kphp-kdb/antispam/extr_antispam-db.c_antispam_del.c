
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pattern_t ;


 int FALSE ;
 int TRUE ;
 int antispam_del_unsafe (int,int *) ;
 int id_to_pattern ;
 int * id_to_pattern_find (int ,int) ;

bool antispam_del (int id) {
  pattern_t *pattern = id_to_pattern_find (id_to_pattern, id);
  if (pattern == 0) {
    return FALSE;
  }
  antispam_del_unsafe (id, pattern);
  return TRUE;
}
