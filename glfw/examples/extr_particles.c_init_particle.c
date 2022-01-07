
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float x; float y; float z; float vz; float vx; float vy; float r; float g; float b; float life; int active; } ;
typedef TYPE_1__ PARTICLE ;


 float FOUNTAIN_HEIGHT ;
 scalar_t__ M_PI ;
 float VELOCITY ;
 scalar_t__ cos (float) ;
 float* glow_color ;
 float* glow_pos ;
 int rand () ;
 scalar_t__ sin (double) ;

__attribute__((used)) static void init_particle(PARTICLE *p, double t)
{
    float xy_angle, velocity;


    p->x = 0.f;
    p->y = 0.f;
    p->z = FOUNTAIN_HEIGHT;


    p->vz = 0.7f + (0.3f / 4096.f) * (float) (rand() & 4095);


    xy_angle = (2.f * (float) M_PI / 4096.f) * (float) (rand() & 4095);
    p->vx = 0.4f * (float) cos(xy_angle);
    p->vy = 0.4f * (float) sin(xy_angle);


    velocity = VELOCITY * (0.8f + 0.1f * (float) (sin(0.5 * t) + sin(1.31 * t)));
    p->vx *= velocity;
    p->vy *= velocity;
    p->vz *= velocity;


    p->r = 0.7f + 0.3f * (float) sin(0.34 * t + 0.1);
    p->g = 0.6f + 0.4f * (float) sin(0.63 * t + 1.1);
    p->b = 0.6f + 0.4f * (float) sin(0.91 * t + 2.1);


    glow_pos[0] = 0.4f * (float) sin(1.34 * t);
    glow_pos[1] = 0.4f * (float) sin(3.11 * t);
    glow_pos[2] = FOUNTAIN_HEIGHT + 1.f;
    glow_pos[3] = 1.f;
    glow_color[0] = p->r;
    glow_color[1] = p->g;
    glow_color[2] = p->b;
    glow_color[3] = 1.f;


    p->life = 1.f;
    p->active = 1;
}
