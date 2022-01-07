
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ l_buf; } ;
typedef TYPE_1__ kurl_t ;



int kurl_eof(const kurl_t *ku)
{
 if (ku == 0) return 1;
 return (ku->l_buf == 0);
}
