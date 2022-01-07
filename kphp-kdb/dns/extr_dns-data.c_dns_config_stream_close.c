
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * f; } ;
typedef TYPE_1__ dns_config_stream_t ;


 int fclose (int *) ;

__attribute__((used)) static void dns_config_stream_close (dns_config_stream_t *self) {
  if (self->f) {
    fclose (self->f);
    self->f = ((void*)0);
  }
}
