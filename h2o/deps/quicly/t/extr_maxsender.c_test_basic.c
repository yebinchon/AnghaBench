
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int quicly_maxsender_t ;
typedef int quicly_maxsender_sent_t ;


 int ok (int) ;
 int quicly_maxsender_acked (int *,int *) ;
 int quicly_maxsender_init (int *,int) ;
 int quicly_maxsender_lost (int *,int *) ;
 int quicly_maxsender_record (int *,int,int *) ;
 int quicly_maxsender_should_send_max (int *,int,int,int) ;

__attribute__((used)) static void test_basic(void)
{
    quicly_maxsender_t m;
    quicly_maxsender_sent_t ackargs;

    quicly_maxsender_init(&m, 100);


    ok(!quicly_maxsender_should_send_max(&m, 0, 100, 512));
    ok(quicly_maxsender_should_send_max(&m, 0, 100, 1024));
    ok(!quicly_maxsender_should_send_max(&m, 99, 100, 0));
    ok(quicly_maxsender_should_send_max(&m, 100, 100, 0));


    ok(!quicly_maxsender_should_send_max(&m, 24, 100, 768));
    ok(quicly_maxsender_should_send_max(&m, 25, 100, 768));
    quicly_maxsender_record(&m, 125, &ackargs);
    ok(!quicly_maxsender_should_send_max(&m, 49, 100, 768));
    ok(quicly_maxsender_should_send_max(&m, 50, 100, 768));
    quicly_maxsender_acked(&m, &ackargs);
    ok(!quicly_maxsender_should_send_max(&m, 49, 100, 768));
    ok(quicly_maxsender_should_send_max(&m, 50, 100, 768));
    quicly_maxsender_record(&m, 150, &ackargs);
    ok(!quicly_maxsender_should_send_max(&m, 74, 100, 768));
    quicly_maxsender_lost(&m, &ackargs);
    ok(quicly_maxsender_should_send_max(&m, 74, 100, 768));
}
