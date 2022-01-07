
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int err; } ;
typedef TYPE_1__ kurl_t ;


 int KURL_NULL ;

int kurl_error(const kurl_t *ku)
{
 if (ku == 0) return KURL_NULL;
 return ku->err;
}
