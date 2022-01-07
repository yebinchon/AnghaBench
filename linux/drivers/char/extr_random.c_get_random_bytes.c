
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _get_random_bytes (void*,int) ;
 int warn_unseeded_randomness (void**) ;

void get_random_bytes(void *buf, int nbytes)
{
 static void *previous;

 warn_unseeded_randomness(&previous);
 _get_random_bytes(buf, nbytes);
}
