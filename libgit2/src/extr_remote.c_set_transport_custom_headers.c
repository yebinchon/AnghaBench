
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* set_custom_headers ) (TYPE_1__*,int const*) ;} ;
typedef TYPE_1__ git_transport ;
typedef int git_strarray ;


 int stub1 (TYPE_1__*,int const*) ;

__attribute__((used)) static int set_transport_custom_headers(git_transport *t, const git_strarray *custom_headers)
{
 if (!t->set_custom_headers)
  return 0;

 return t->set_custom_headers(t, custom_headers);
}
