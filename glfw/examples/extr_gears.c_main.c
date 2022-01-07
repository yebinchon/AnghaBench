
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int GLFW_DEPTH_BITS ;
 int GLFW_TRANSPARENT_FRAMEBUFFER ;
 int GLFW_TRUE ;
 int animate () ;
 int draw () ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int gladLoadGL (int ) ;
 int * glfwCreateWindow (int,int,char*,int *,int *) ;
 int glfwGetFramebufferSize (int *,int*,int*) ;
 int glfwGetProcAddress ;
 int glfwInit () ;
 int glfwMakeContextCurrent (int *) ;
 int glfwPollEvents () ;
 int glfwSetFramebufferSizeCallback (int *,int (*) (int *,int,int)) ;
 int glfwSetKeyCallback (int *,int ) ;
 int glfwSwapBuffers (int *) ;
 int glfwSwapInterval (int) ;
 int glfwTerminate () ;
 int glfwWindowHint (int ,int) ;
 int glfwWindowShouldClose (int *) ;
 int init () ;
 int key ;
 int reshape (int *,int,int) ;
 int stderr ;

int main(int argc, char *argv[])
{
    GLFWwindow* window;
    int width, height;

    if( !glfwInit() )
    {
        fprintf( stderr, "Failed to initialize GLFW\n" );
        exit( EXIT_FAILURE );
    }

    glfwWindowHint(GLFW_DEPTH_BITS, 16);
    glfwWindowHint(GLFW_TRANSPARENT_FRAMEBUFFER, GLFW_TRUE);

    window = glfwCreateWindow( 300, 300, "Gears", ((void*)0), ((void*)0) );
    if (!window)
    {
        fprintf( stderr, "Failed to open GLFW window\n" );
        glfwTerminate();
        exit( EXIT_FAILURE );
    }


    glfwSetFramebufferSizeCallback(window, reshape);
    glfwSetKeyCallback(window, key);

    glfwMakeContextCurrent(window);
    gladLoadGL(glfwGetProcAddress);
    glfwSwapInterval( 1 );

    glfwGetFramebufferSize(window, &width, &height);
    reshape(window, width, height);


    init();


    while( !glfwWindowShouldClose(window) )
    {

        draw();


        animate();


        glfwSwapBuffers(window);
        glfwPollEvents();
    }


    glfwTerminate();


    exit( EXIT_SUCCESS );
}
