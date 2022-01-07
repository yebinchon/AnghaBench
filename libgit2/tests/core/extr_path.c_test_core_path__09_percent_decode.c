
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_percent_decoding (char*,char*) ;

void test_core_path__09_percent_decode(void)
{
 check_percent_decoding("abcd", "abcd");
 check_percent_decoding("a2%", "a2%");
 check_percent_decoding("a2%3", "a2%3");
 check_percent_decoding("a2%%3", "a2%%3");
 check_percent_decoding("a2%3z", "a2%3z");
 check_percent_decoding("a,", "a%2c");
 check_percent_decoding("a21", "a2%31");
 check_percent_decoding("a2%1", "a2%%31");
 check_percent_decoding("a bc ", "a%20bc%20");
 check_percent_decoding("Vicent Mart" "\355", "Vicent%20Mart%ED");
}
