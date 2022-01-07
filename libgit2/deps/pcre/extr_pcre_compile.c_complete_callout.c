
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pcre_uchar ;
struct TYPE_3__ {int const* start_pattern; } ;
typedef TYPE_1__ compile_data ;


 int GET (int *,int) ;
 scalar_t__ LINK_SIZE ;
 int PUT (int *,scalar_t__,int) ;

__attribute__((used)) static void
complete_callout(pcre_uchar *previous_callout, const pcre_uchar *ptr, compile_data *cd)
{
int length = (int)(ptr - cd->start_pattern - GET(previous_callout, 2));
PUT(previous_callout, 2 + LINK_SIZE, length);
}
