
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pending; } ;
typedef TYPE_1__ uv_async_t ;


 int cmpxchgi (int *,int,int ) ;
 int cpu_relax () ;

__attribute__((used)) static int uv__async_spin(uv_async_t* handle) {
  int rc;

  for (;;) {




    rc = cmpxchgi(&handle->pending, 2, 0);

    if (rc != 1)
      return rc;


    cpu_relax();
  }
}
