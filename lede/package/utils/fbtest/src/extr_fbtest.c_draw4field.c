
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vidsize {int height; int width; } ;
struct rect {int height; int width; int x; int y; struct colour* col; } ;
struct pixelformat {scalar_t__ pixenum; } ;
struct colour {int r; } ;


 scalar_t__ CLUT4 ;
 scalar_t__ CLUT8 ;
 struct colour* colourtable ;
 int drawrect (void*,struct rect*,struct pixelformat const*,struct vidsize const*) ;

void draw4field(void *videoram, const struct pixelformat *pixf, const struct vidsize *vids){
 struct rect r;
 struct colour c;
 int height, width;
 c.r = 1;
 height = vids->height;
 width = vids->width;

 r.height = height>>1;
 r.width = width>>1;
 r.x = 0; r.y = 0;
 if (pixf->pixenum==CLUT4||pixf->pixenum==CLUT8) r.col = &c;
 else r.col = &colourtable[1];
 drawrect (videoram, &r, pixf, vids);

 r.x = width/2; r.y = 0;
 if (pixf->pixenum==CLUT4||pixf->pixenum==CLUT8) c.r = 2;
 else r.col = &colourtable[2];
 drawrect (videoram, &r, pixf, vids);

 r.x = 0; r.y = height/2;
 if (pixf->pixenum==CLUT4||pixf->pixenum==CLUT8) c.r = 3;
 else r.col = &colourtable[3];
 drawrect (videoram, &r, pixf, vids);

 r.x = width/2; r.y = height/2;
 if (pixf->pixenum==CLUT4||pixf->pixenum==CLUT8) c.r = 0;
 else r.col = &colourtable[0];
 drawrect (videoram, &r, pixf, vids);
}
