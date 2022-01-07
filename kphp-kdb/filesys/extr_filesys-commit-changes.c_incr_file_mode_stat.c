
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int st_mode; } ;
struct TYPE_5__ {TYPE_1__ st; } ;
typedef TYPE_2__ file_t ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 int directories ;
 int regulars ;
 int symlinks ;

__attribute__((used)) static void incr_file_mode_stat (file_t *x) {
  if (S_ISLNK (x->st.st_mode)) {
    symlinks++;
  } else if (S_ISDIR (x->st.st_mode)) {
    directories++;
  } else {
    regulars++;
  }
}
