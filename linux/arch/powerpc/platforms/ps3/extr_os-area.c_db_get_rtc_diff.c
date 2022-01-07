
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct os_area_db {int dummy; } ;
typedef int int64_t ;


 int db_get_64 (struct os_area_db const*,int *,int *) ;
 int os_area_db_id_rtc_diff ;

__attribute__((used)) static int db_get_rtc_diff(const struct os_area_db *db, int64_t *rtc_diff)
{
 return db_get_64(db, &os_area_db_id_rtc_diff, (uint64_t*)rtc_diff);
}
