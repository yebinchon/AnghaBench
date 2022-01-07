
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int quicly_now_t ;
typedef int int64_t ;


 int quic_now ;

__attribute__((used)) static int64_t get_now_cb(quicly_now_t *self)
{
    return quic_now;
}
