
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdesc_handle {TYPE_1__* mops; } ;
struct TYPE_2__ {int (* free ) (struct mdesc_handle*) ;} ;


 int stub1 (struct mdesc_handle*) ;

__attribute__((used)) static void mdesc_free(struct mdesc_handle *hp)
{
 hp->mops->free(hp);
}
