
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int c ;
typedef int b ;
typedef int a ;


 char* X (int) ;
 int test_content_length_overflow (char const*,int,int) ;

void
test_header_content_length_overflow_error (void)
{




  const char a[] = "HTTP/1.1 200 OK\r\n" "Content-Length: " "1844674407370955160" "\r\n" "\r\n";
  const char b[] = "HTTP/1.1 200 OK\r\n" "Content-Length: " "18446744073709551615" "\r\n" "\r\n";
  const char c[] = "HTTP/1.1 200 OK\r\n" "Content-Length: " "18446744073709551616" "\r\n" "\r\n";

  test_content_length_overflow(a, sizeof(a) - 1, 1);
  test_content_length_overflow(b, sizeof(b) - 1, 0);
  test_content_length_overflow(c, sizeof(c) - 1, 0);
}
