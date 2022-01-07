
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_3__ {int off0; int p_buf; } ;
typedef TYPE_1__ kurl_t ;



off_t kurl_tell(const kurl_t *ku)
{
 if (ku == 0) return -1;
 return ku->off0 + ku->p_buf;
}
