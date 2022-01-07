
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * member_1; int * member_0; } ;
typedef TYPE_1__ git_message_trailer ;


 int assert_trailers (char*,TYPE_1__*) ;

void test_message_trailer__not_last_paragraph(void)
{
 git_message_trailer trailers[] = {
  {((void*)0), ((void*)0)},
 };

 assert_trailers(
  "Message\n"
  "\n"
  "Key: value\n"
  "\n"
  "More stuff\n"
 , trailers);
}
