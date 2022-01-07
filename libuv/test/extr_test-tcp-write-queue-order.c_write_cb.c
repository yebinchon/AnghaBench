
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_write_t ;


 int UV_ECANCELED ;
 int write_callbacks ;
 int write_cancelled_callbacks ;
 int write_error_callbacks ;

__attribute__((used)) static void write_cb(uv_write_t* req, int status) {
  if (status == 0)
    write_callbacks++;
  else if (status == UV_ECANCELED)
    write_cancelled_callbacks++;
  else
    write_error_callbacks++;
}
