
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdsc_unregister (void*) ;

__attribute__((used)) static void qcom_cc_gdsc_unregister(void *data)
{
 gdsc_unregister(data);
}
