
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__* s; } ;
typedef TYPE_1__ uiAttributedString ;



__attribute__((used)) static int onCodepointBoundary(uiAttributedString *s, size_t at)
{
 uint8_t c;


 if (s->s == ((void*)0) && at == 0)
  return 1;
 c = (uint8_t) (s->s[at]);
 return c < 0x80 || c >= 0xC0;
}
