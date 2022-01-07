
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int cursor_position_callback ;
 int display () ;
 scalar_t__ dt ;
 int exit (int ) ;
 int gladLoadGL (int ) ;
 int * glfwCreateWindow (int,int,char*,int *,int *) ;
 int glfwGetFramebufferSize (int *,int *,int *) ;
 int glfwGetProcAddress ;
 scalar_t__ glfwGetTime () ;
 int glfwInit () ;
 int glfwMakeContextCurrent (int *) ;
 int glfwPollEvents () ;
 int glfwSetCursorPosCallback (int *,int ) ;
 int glfwSetFramebufferSizeCallback (int *,int (*) (int *,int ,int )) ;
 int glfwSetKeyCallback (int *,int ) ;
 int glfwSetMouseButtonCallback (int *,int ) ;
 int glfwSetTime (double) ;
 int glfwSetWindowAspectRatio (int *,int,int) ;
 int glfwSwapBuffers (int *) ;
 int glfwSwapInterval (int) ;
 int glfwTerminate () ;
 scalar_t__ glfwWindowShouldClose (int *) ;
 int height ;
 int init () ;
 int key_callback ;
 int mouse_button_callback ;
 int reshape (int *,int ,int ) ;
 scalar_t__ t ;
 scalar_t__ t_old ;
 int width ;

int main( void )
{
   GLFWwindow* window;


   if( !glfwInit() )
      exit( EXIT_FAILURE );

   window = glfwCreateWindow( 400, 400, "Boing (classic Amiga demo)", ((void*)0), ((void*)0) );
   if (!window)
   {
       glfwTerminate();
       exit( EXIT_FAILURE );
   }

   glfwSetWindowAspectRatio(window, 1, 1);

   glfwSetFramebufferSizeCallback(window, reshape);
   glfwSetKeyCallback(window, key_callback);
   glfwSetMouseButtonCallback(window, mouse_button_callback);
   glfwSetCursorPosCallback(window, cursor_position_callback);

   glfwMakeContextCurrent(window);
   gladLoadGL(glfwGetProcAddress);
   glfwSwapInterval( 1 );

   glfwGetFramebufferSize(window, &width, &height);
   reshape(window, width, height);

   glfwSetTime( 0.0 );

   init();


   for (;;)
   {

       t = glfwGetTime();
       dt = t - t_old;
       t_old = t;


       display();


       glfwSwapBuffers(window);
       glfwPollEvents();


       if (glfwWindowShouldClose(window))
           break;
   }

   glfwTerminate();
   exit( EXIT_SUCCESS );
}
