
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct therm {void* hi; void* lo; } ;


 int THERM_READ_TH ;
 int THERM_READ_TL ;
 void* cvt_9_to_int (int ) ;
 int ds1620_in (int ,int) ;

__attribute__((used)) static void ds1620_read_state(struct therm *therm)
{
 therm->lo = cvt_9_to_int(ds1620_in(THERM_READ_TL, 9));
 therm->hi = cvt_9_to_int(ds1620_in(THERM_READ_TH, 9));
}
