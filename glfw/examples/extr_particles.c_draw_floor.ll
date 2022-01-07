; ModuleID = '/home/carl/AnghaBench/glfw/examples/extr_particles.c_draw_floor.c'
source_filename = "/home/carl/AnghaBench/glfw/examples/extr_particles.c_draw_floor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@draw_floor.floor_list = internal global i64 0, align 8
@wireframe = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@floor_tex_id = common dso_local global i32 0, align 4
@GL_COMPILE_AND_EXECUTE = common dso_local global i32 0, align 4
@GL_FRONT = common dso_local global i32 0, align 4
@GL_DIFFUSE = common dso_local global i32 0, align 4
@floor_diffuse = common dso_local global i32 0, align 4
@GL_SPECULAR = common dso_local global i32 0, align 4
@floor_specular = common dso_local global i32 0, align 4
@GL_SHININESS = common dso_local global i32 0, align 4
@floor_shininess = common dso_local global i32 0, align 4
@GL_QUADS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @draw_floor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_floor() #0 {
  %1 = load i32, i32* @wireframe, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  %4 = load i32, i32* @GL_TEXTURE_2D, align 4
  %5 = call i32 @glEnable(i32 %4)
  %6 = load i32, i32* @GL_TEXTURE_2D, align 4
  %7 = load i32, i32* @floor_tex_id, align 4
  %8 = call i32 @glBindTexture(i32 %6, i32 %7)
  br label %9

9:                                                ; preds = %3, %0
  %10 = load i64, i64* @draw_floor.floor_list, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %38, label %12

12:                                               ; preds = %9
  %13 = call i64 @glGenLists(i32 1)
  store i64 %13, i64* @draw_floor.floor_list, align 8
  %14 = load i64, i64* @draw_floor.floor_list, align 8
  %15 = load i32, i32* @GL_COMPILE_AND_EXECUTE, align 4
  %16 = call i32 @glNewList(i64 %14, i32 %15)
  %17 = load i32, i32* @GL_FRONT, align 4
  %18 = load i32, i32* @GL_DIFFUSE, align 4
  %19 = load i32, i32* @floor_diffuse, align 4
  %20 = call i32 @glMaterialfv(i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* @GL_FRONT, align 4
  %22 = load i32, i32* @GL_SPECULAR, align 4
  %23 = load i32, i32* @floor_specular, align 4
  %24 = call i32 @glMaterialfv(i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* @GL_FRONT, align 4
  %26 = load i32, i32* @GL_SHININESS, align 4
  %27 = load i32, i32* @floor_shininess, align 4
  %28 = call i32 @glMaterialf(i32 %25, i32 %26, i32 %27)
  %29 = call i32 @glNormal3f(float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  %30 = load i32, i32* @GL_QUADS, align 4
  %31 = call i32 @glBegin(i32 %30)
  %32 = call i32 @tessellate_floor(float -1.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0)
  %33 = call i32 @tessellate_floor(float 0.000000e+00, float -1.000000e+00, float 1.000000e+00, float 0.000000e+00, i32 0)
  %34 = call i32 @tessellate_floor(float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, i32 0)
  %35 = call i32 @tessellate_floor(float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0)
  %36 = call i32 (...) @glEnd()
  %37 = call i32 (...) @glEndList()
  br label %41

38:                                               ; preds = %9
  %39 = load i64, i64* @draw_floor.floor_list, align 8
  %40 = call i32 @glCallList(i64 %39)
  br label %41

41:                                               ; preds = %38, %12
  %42 = load i32, i32* @GL_TEXTURE_2D, align 4
  %43 = call i32 @glDisable(i32 %42)
  ret void
}

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i64 @glGenLists(i32) #1

declare dso_local i32 @glNewList(i64, i32) #1

declare dso_local i32 @glMaterialfv(i32, i32, i32) #1

declare dso_local i32 @glMaterialf(i32, i32, i32) #1

declare dso_local i32 @glNormal3f(float, float, float) #1

declare dso_local i32 @glBegin(i32) #1

declare dso_local i32 @tessellate_floor(float, float, float, float, i32) #1

declare dso_local i32 @glEnd(...) #1

declare dso_local i32 @glEndList(...) #1

declare dso_local i32 @glCallList(i64) #1

declare dso_local i32 @glDisable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
