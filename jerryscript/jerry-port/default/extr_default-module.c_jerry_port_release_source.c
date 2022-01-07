
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int free (int *) ;

void
jerry_port_release_source (uint8_t *buffer_p)
{
  free (buffer_p);
}
