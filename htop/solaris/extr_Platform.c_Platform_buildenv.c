
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ps_prochandle {int dummy; } ;
struct TYPE_2__ {size_t capacity; size_t size; scalar_t__ env; } ;
typedef TYPE_1__ envAccum ;


 int strlcpy (scalar_t__,char const*,size_t) ;
 size_t strlen (char const*) ;
 int strncpy (scalar_t__,char*,int) ;
 scalar_t__ xRealloc (scalar_t__,int) ;

__attribute__((used)) static int Platform_buildenv(void *accum, struct ps_prochandle *Phandle, uintptr_t addr, const char *str) {
   envAccum *accump = accum;
   (void) Phandle;
   (void) addr;
   size_t thissz = strlen(str);
   if ((thissz + 2) > (accump->capacity - accump->size))
      accump->env = xRealloc(accump->env, accump->capacity *= 2);
   if ((thissz + 2) > (accump->capacity - accump->size))
      return 1;
   strlcpy( accump->env + accump->size, str, (accump->capacity - accump->size));
   strncpy( accump->env + accump->size + thissz + 1, "\n", 1);
   accump->size = accump->size + thissz + 1;
   return 0;
}
