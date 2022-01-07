
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int c ;
typedef int b ;
typedef int a ;


 int FFFFFFFFFFFFFFE ;
 int FFFFFFFFFFFFFFFF ;
 char* X (int) ;
 int test_content_length_overflow (char const*,int,int) ;

void
test_chunk_content_length_overflow_error (void)
{






  const char a[] = "HTTP/1.1 200 OK\r\n" "Transfer-Encoding: chunked\r\n" "\r\n" "FFFFFFFFFFFFFFE" "\r\n" "...";
  const char b[] = "HTTP/1.1 200 OK\r\n" "Transfer-Encoding: chunked\r\n" "\r\n" "FFFFFFFFFFFFFFFF" "\r\n" "...";
  const char c[] = "HTTP/1.1 200 OK\r\n" "Transfer-Encoding: chunked\r\n" "\r\n" "10000000000000000" "\r\n" "...";

  test_content_length_overflow(a, sizeof(a) - 1, 1);
  test_content_length_overflow(b, sizeof(b) - 1, 0);
  test_content_length_overflow(c, sizeof(c) - 1, 0);
}
