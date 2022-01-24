#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  pterodactylus ;
typedef  scalar_t__ jerry_value_t ;
typedef  char jerry_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  JERRY_INIT_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char const*,size_t const) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 (char const*) ; 
 double FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int FUNC14 (scalar_t__) ; 
 int FUNC15 (scalar_t__) ; 

int
FUNC16 (void)
{
  FUNC1 ();

  FUNC12 (JERRY_INIT_EMPTY);

  jerry_value_t obj_val = FUNC8 ();
  obj_val = FUNC6 (obj_val, true);
  jerry_value_t err_val = FUNC3 (obj_val);

  obj_val = FUNC11 (err_val, true);

  FUNC0 (obj_val != err_val);
  FUNC13 (err_val);
  FUNC13 (obj_val);

  const jerry_char_t pterodactylus[] = "Pterodactylus";
  const size_t pterodactylus_size = sizeof (pterodactylus) - 1;

  jerry_value_t str = FUNC9 (pterodactylus);
  jerry_value_t error = FUNC6 (str, true);
  str = FUNC11 (error, true);

  FUNC2 (str, pterodactylus, pterodactylus_size);
  FUNC13 (str);

  str = FUNC9 (pterodactylus);
  error = FUNC6 (str, false);
  FUNC13 (str);
  str = FUNC11 (error, true);

  FUNC2 (str, pterodactylus, pterodactylus_size);
  FUNC13 (str);

  str = FUNC9 (pterodactylus);
  error = FUNC5 (str, true);
  str = FUNC11 (error, true);

  FUNC2 (str, pterodactylus, pterodactylus_size);
  FUNC13 (str);

  str = FUNC9 (pterodactylus);
  error = FUNC5 (str, false);
  FUNC13 (str);
  str = FUNC11 (error, true);

  FUNC2 (str, pterodactylus, pterodactylus_size);
  FUNC13 (str);

  str = FUNC9 (pterodactylus);
  error = FUNC6 (str, true);
  error = FUNC5 (error, true);
  FUNC0 (FUNC14 (error));
  str = FUNC11 (error, true);

  FUNC2 (str, pterodactylus, pterodactylus_size);
  FUNC13 (str);

  str = FUNC9 (pterodactylus);
  error = FUNC6 (str, true);
  jerry_value_t error2 = FUNC5 (error, false);
  FUNC0 (FUNC14 (error2));
  FUNC13 (error);
  str = FUNC11 (error2, true);

  FUNC2 (str, pterodactylus, pterodactylus_size);
  FUNC13 (str);

  double test_num = 3.1415926;
  jerry_value_t num = FUNC7 (test_num);
  jerry_value_t num2 = FUNC6 (num, false);
  FUNC0 (FUNC15 (num2));
  FUNC13 (num);
  num2 = FUNC11 (num2, true);
  FUNC0 (FUNC10 (num2) == test_num);
  FUNC13 (num2);

  num = FUNC7 (test_num);
  num2 = FUNC6 (num, true);
  FUNC0 (FUNC15 (num2));
  num2 = FUNC11 (num2, true);
  FUNC0 (FUNC10 (num2) == test_num);
  FUNC13 (num2);

  num = FUNC7 (test_num);
  num2 = FUNC6 (num, false);
  FUNC0 (FUNC15 (num2));
  FUNC13 (num);
  jerry_value_t num3 = FUNC6 (num2, false);
  FUNC0 (FUNC15 (num3));
  FUNC13 (num2);
  num2 = FUNC11 (num3, true);
  FUNC0 (FUNC10 (num2) == test_num);
  FUNC13 (num2);

  num = FUNC7 (test_num);
  num2 = FUNC6 (num, true);
  FUNC0 (FUNC15 (num2));
  num3 = FUNC6 (num2, true);
  FUNC0 (FUNC15 (num3));
  num2 = FUNC11 (num3, true);
  FUNC0 (FUNC10 (num2) == test_num);
  FUNC13 (num2);

  num = FUNC7 (test_num);
  error = FUNC5 (num, true);
  FUNC0 (FUNC14 (error));
  num2 = FUNC6 (error, true);
  FUNC0 (FUNC15 (num2));
  num = FUNC11 (num2, true);
  FUNC0 (FUNC10 (num) == test_num);
  FUNC13 (num);

  num = FUNC7 (test_num);
  error = FUNC5 (num, false);
  FUNC13 (num);
  FUNC0 (FUNC14 (error));
  num2 = FUNC6 (error, true);
  FUNC0 (FUNC15 (num2));
  num = FUNC11 (num2, true);
  FUNC0 (FUNC10 (num) == test_num);
  FUNC13 (num);

  num = FUNC7 (test_num);
  error = FUNC5 (num, true);
  FUNC0 (FUNC14 (error));
  num2 = FUNC6 (error, false);
  FUNC13 (error);
  FUNC0 (FUNC15 (num2));
  num = FUNC11 (num2, true);
  FUNC0 (FUNC10 (num) == test_num);
  FUNC13 (num);

  num = FUNC7 (test_num);
  error = FUNC5 (num, false);
  FUNC13 (num);
  FUNC0 (FUNC14 (error));
  num2 = FUNC6 (error, false);
  FUNC13 (error);
  FUNC0 (FUNC15 (num2));
  num = FUNC11 (num2, true);
  FUNC0 (FUNC10 (num) == test_num);
  FUNC13 (num);

  jerry_value_t value = FUNC7 (42);
  value = FUNC11 (value, true);
  FUNC13 (value);

  value = FUNC7 (42);
  jerry_value_t value2 = FUNC11 (value, false);
  FUNC13 (value);
  FUNC13 (value2);

  value = FUNC7 (42);
  error = FUNC6 (value, true);
  error = FUNC6 (error, true);
  FUNC13 (error);

  value = FUNC7 (42);
  error = FUNC5 (value, true);
  error = FUNC5 (error, true);
  FUNC13 (error);

  value = FUNC7 (42);
  error = FUNC6 (value, true);
  error2 = FUNC6 (error, false);
  FUNC13 (error);
  FUNC13 (error2);

  value = FUNC7 (42);
  error = FUNC5 (value, true);
  error2 = FUNC5 (error, false);
  FUNC13 (error);
  FUNC13 (error2);

  FUNC4 ();
}