
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; char* member_1; } ;
typedef TYPE_1__ git_message_trailer ;


 int assert_trailers (char*,TYPE_1__*) ;

void test_message_trailer__invalid(void)
{
 git_message_trailer trailers[] = {
  {"Signed-off-by", "some@one.com"},
  {"Another", "trailer"},
  {((void*)0), ((void*)0)},
 };

 assert_trailers(
  "Message\n"
  "\n"
  "Signed-off-by: some@one.com\n"
  "Not a trailer\n"
  "Another: trailer\n"
 , trailers);
}
