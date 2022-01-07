
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
evhttp_valid_response_code(int code)
{
 if (code == 0)
  return (0);

 return (1);
}
