
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dec {scalar_t__ code; } ;



__attribute__((used)) static inline char rc_is_finished(const struct rc_dec *rc)
{
 return rc->code == 0;
}
