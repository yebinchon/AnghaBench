
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __einj_get_available_error_type (int *) ;
 int einj_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int einj_get_available_error_type(u32 *type)
{
 int rc;

 mutex_lock(&einj_mutex);
 rc = __einj_get_available_error_type(type);
 mutex_unlock(&einj_mutex);

 return rc;
}
