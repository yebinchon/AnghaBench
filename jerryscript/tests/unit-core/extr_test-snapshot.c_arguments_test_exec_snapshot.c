
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int jerry_value_t ;


 int JERRY_INIT_EMPTY ;
 int TEST_ASSERT (int) ;
 int jerry_cleanup () ;
 int jerry_exec_snapshot (int *,size_t,int ,int ) ;
 double jerry_get_number_value (int ) ;
 int jerry_init (int ) ;
 int jerry_release_value (int ) ;
 int jerry_value_is_error (int ) ;
 int jerry_value_is_number (int ) ;

__attribute__((used)) static void arguments_test_exec_snapshot (uint32_t *snapshot_p, size_t snapshot_size, uint32_t exec_snapshot_flags)
{
  jerry_init (JERRY_INIT_EMPTY);
  jerry_value_t res = jerry_exec_snapshot (snapshot_p, snapshot_size, 0, exec_snapshot_flags);
  TEST_ASSERT (!jerry_value_is_error (res));
  TEST_ASSERT (jerry_value_is_number (res));
  double raw_value = jerry_get_number_value (res);
  TEST_ASSERT (raw_value == 15);
  jerry_release_value (res);

  jerry_cleanup ();
}
