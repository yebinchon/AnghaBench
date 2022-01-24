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
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  cursor_position_callback ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ dt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  glfwGetProcAddress ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (double) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  height ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  key_callback ; 
 int /*<<< orphan*/  mouse_button_callback ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ t ; 
 scalar_t__ t_old ; 
 int /*<<< orphan*/  width ; 

int FUNC21( void )
{
   GLFWwindow* window;

   /* Init GLFW */
   if( !FUNC6() )
      FUNC1( EXIT_FAILURE );

   window = FUNC3( 400, 400, "Boing (classic Amiga demo)", NULL, NULL );
   if (!window)
   {
       FUNC17();
       FUNC1( EXIT_FAILURE );
   }

   FUNC14(window, 1, 1);

   FUNC10(window, reshape);
   FUNC11(window, key_callback);
   FUNC12(window, mouse_button_callback);
   FUNC9(window, cursor_position_callback);

   FUNC7(window);
   FUNC2(glfwGetProcAddress);
   FUNC16( 1 );

   FUNC4(window, &width, &height);
   FUNC20(window, width, height);

   FUNC13( 0.0 );

   FUNC19();

   /* Main loop */
   for (;;)
   {
       /* Timing */
       t = FUNC5();
       dt = t - t_old;
       t_old = t;

       /* Draw one frame */
       FUNC0();

       /* Swap buffers */
       FUNC15(window);
       FUNC8();

       /* Check if we are still running */
       if (FUNC18(window))
           break;
   }

   FUNC17();
   FUNC1( EXIT_SUCCESS );
}