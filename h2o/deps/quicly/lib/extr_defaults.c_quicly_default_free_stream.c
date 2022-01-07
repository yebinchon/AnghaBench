
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int quicly_stream_t ;


 int free (int *) ;

void quicly_default_free_stream(quicly_stream_t *stream)
{
    free(stream);
}
