
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int simple_http ;
 int subtest (char*,int ) ;
 int test_close ;
 int test_handshake ;
 int test_reset_after_close ;
 int test_rst_during_loss ;
 int test_rst_then_close ;
 int test_send_then_close ;
 int tiny_connection_window ;
 int tiny_stream_window ;

void test_simple(void)
{
    subtest("handshake", test_handshake);
    subtest("simple-http", simple_http);
    subtest("rst-then-close", test_rst_then_close);
    subtest("send-then-close", test_send_then_close);
    subtest("reset-after-close", test_reset_after_close);
    subtest("tiny-stream-window", tiny_stream_window);
    subtest("rst-during-loss", test_rst_during_loss);
    subtest("close", test_close);
    subtest("tiny-connection-window", tiny_connection_window);
}
