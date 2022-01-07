
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {size_t count; TYPE_1__* trailers; } ;
typedef TYPE_2__ git_message_trailer_array ;
struct TYPE_9__ {int value; int key; } ;
typedef TYPE_3__ git_message_trailer ;
struct TYPE_7__ {int value; int key; } ;


 int cl_assert_equal_i (int ,int) ;
 int cl_assert_equal_s (int ,int ) ;
 int git_message_trailer_array_free (TYPE_2__*) ;
 int git_message_trailers (TYPE_2__*,char const*) ;

__attribute__((used)) static void assert_trailers(const char *message, git_message_trailer *trailers)
{
 git_message_trailer_array arr;
 size_t i;

 int rc = git_message_trailers(&arr, message);

 cl_assert_equal_i(0, rc);

 for(i=0; i<arr.count; i++) {
  cl_assert_equal_s(arr.trailers[i].key, trailers[i].key);
  cl_assert_equal_s(arr.trailers[i].value, trailers[i].value);
 }

 cl_assert_equal_i(0, rc);

 git_message_trailer_array_free(&arr);
}
