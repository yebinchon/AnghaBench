
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int BREAK_ERR_MSG_INVALIDARG ;

 int puts (int ) ;

__attribute__((used)) static void
print_api_common_error(int32_t error)
{
  switch(error) {
    case 128:
      puts(BREAK_ERR_MSG_INVALIDARG);
      break;
    default:
      break;
  }
}
