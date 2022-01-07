
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum http_errno { ____Placeholder_http_errno } http_errno ;
struct TYPE_3__ {char const* description; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int assert (int) ;
 TYPE_1__* http_strerror_tab ;

const char *
http_errno_description(enum http_errno err) {
  assert(((size_t) err) < ARRAY_SIZE(http_strerror_tab));
  return http_strerror_tab[err].description;
}
