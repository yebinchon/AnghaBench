
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* fetch_lookup ) (char*,int) ;} ;


 TYPE_1__* TL_IN_METHODS ;
 int stub1 (char*,int) ;
 scalar_t__ tl_fetch_check (int) ;

__attribute__((used)) static inline int tl_fetch_lookup_data (char *data, int len) {
  if (tl_fetch_check (len) < 0) {
    return -1;
  }
  TL_IN_METHODS->fetch_lookup (data, len);
  return len;
}
