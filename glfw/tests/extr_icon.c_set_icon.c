
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; int member_1; unsigned char* member_2; int width; int height; } ;
typedef int GLFWwindow ;
typedef TYPE_1__ GLFWimage ;


 int glfwSetWindowIcon (int *,int,TYPE_1__*) ;
 int * icon_colors ;
 int ** logo ;
 int memcpy (unsigned char*,int ,int) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static void set_icon(GLFWwindow* window, int icon_color)
{
    int x, y;
    unsigned char pixels[16 * 16 * 4];
    unsigned char* target = pixels;
    GLFWimage img = { 16, 16, pixels };

    for (y = 0; y < img.width; y++)
    {
        for (x = 0; x < img.height; x++)
        {
            if (logo[y][x] == '0')
                memcpy(target, icon_colors[icon_color], 4);
            else
                memset(target, 0, 4);

            target += 4;
        }
    }

    glfwSetWindowIcon(window, 1, &img);
}
