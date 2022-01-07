; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_inputlag.c_swap_buffers.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_inputlag.c_swap_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@swap_clear = common dso_local global i64 0, align 8
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@swap_finish = common dso_local global i64 0, align 8
@swap_occlusion_query = common dso_local global i64 0, align 8
@occlusion_query = common dso_local global i32 0, align 4
@GL_SAMPLES_PASSED = common dso_local global i32 0, align 4
@GL_POINTS = common dso_local global i32 0, align 4
@GL_QUERY_RESULT = common dso_local global i32 0, align 4
@swap_read_pixels = common dso_local global i64 0, align 8
@GL_RGBA = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap_buffers(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [4 x i8], align 1
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @glfwSwapBuffers(i32* %5)
  %7 = load i64, i64* @swap_clear, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %11 = call i32 @glClear(i32 %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i64, i64* @swap_finish, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 (...) @glFinish()
  br label %17

17:                                               ; preds = %15, %12
  %18 = load i64, i64* @swap_occlusion_query, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %17
  %21 = load i32, i32* @occlusion_query, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = call i32 @glGenQueries(i32 1, i32* @occlusion_query)
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32, i32* @GL_SAMPLES_PASSED, align 4
  %27 = load i32, i32* @occlusion_query, align 4
  %28 = call i32 @glBeginQuery(i32 %26, i32 %27)
  %29 = load i32, i32* @GL_POINTS, align 4
  %30 = call i32 @glBegin(i32 %29)
  %31 = call i32 @glVertex2f(i32 0, i32 0)
  %32 = call i32 (...) @glEnd()
  %33 = load i32, i32* @GL_SAMPLES_PASSED, align 4
  %34 = call i32 @glEndQuery(i32 %33)
  %35 = load i32, i32* @occlusion_query, align 4
  %36 = load i32, i32* @GL_QUERY_RESULT, align 4
  %37 = call i32 @glGetQueryObjectiv(i32 %35, i32 %36, i32* %3)
  br label %38

38:                                               ; preds = %25, %17
  %39 = load i64, i64* @swap_read_pixels, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* @GL_RGBA, align 4
  %43 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %45 = call i32 @glReadPixels(i32 0, i32 0, i32 1, i32 1, i32 %42, i32 %43, i8* %44)
  br label %46

46:                                               ; preds = %41, %38
  ret void
}

declare dso_local i32 @glfwSwapBuffers(i32*) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glFinish(...) #1

declare dso_local i32 @glGenQueries(i32, i32*) #1

declare dso_local i32 @glBeginQuery(i32, i32) #1

declare dso_local i32 @glBegin(i32) #1

declare dso_local i32 @glVertex2f(i32, i32) #1

declare dso_local i32 @glEnd(...) #1

declare dso_local i32 @glEndQuery(i32) #1

declare dso_local i32 @glGetQueryObjectiv(i32, i32, i32*) #1

declare dso_local i32 @glReadPixels(i32, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
