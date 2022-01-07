
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int trailers; int _trailer_block; } ;
typedef TYPE_1__ git_message_trailer_array ;


 int git__free (int ) ;

void git_message_trailer_array_free(git_message_trailer_array *arr)
{
 git__free(arr->_trailer_block);
 git__free(arr->trailers);
}
