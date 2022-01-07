
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; int member_1; unsigned char* member_2; int width; int height; } ;
typedef TYPE_1__ GLFWimage ;
typedef int GLFWcursor ;


 int * glfwCreateCursor (TYPE_1__ const*,int,int) ;
 int star (int,int,float) ;

__attribute__((used)) static GLFWcursor* create_cursor_frame(float t)
{
    int i = 0, x, y;
    unsigned char buffer[64 * 64 * 4];
    const GLFWimage image = { 64, 64, buffer };

    for (y = 0; y < image.width; y++)
    {
        for (x = 0; x < image.height; x++)
        {
            buffer[i++] = 255;
            buffer[i++] = 255;
            buffer[i++] = 255;
            buffer[i++] = (unsigned char) (255 * star(x, y, t));
        }
    }

    return glfwCreateCursor(&image, image.width / 2, image.height / 2);
}
