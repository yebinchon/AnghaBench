; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wgl_context.c_swapIntervalWGL.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wgl_context.c_swapIntervalWGL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@_glfw = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @swapIntervalWGL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swapIntervalWGL(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = call %struct.TYPE_10__* @_glfwPlatformGetTls(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 1))
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i32 %6, i32* %10, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %1
  %16 = call i64 (...) @IsWindowsVistaOrGreater()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = call i64 (...) @IsWindows8OrGreater()
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = call i32 @DwmIsCompositionEnabled(i64* %4)
  %24 = call i64 @SUCCEEDED(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i64, i64* %4, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %18
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %26, %22
  br label %31

31:                                               ; preds = %30, %15
  br label %32

32:                                               ; preds = %31, %1
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 0), align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @wglSwapIntervalEXT(i32 %36)
  br label %38

38:                                               ; preds = %35, %32
  ret void
}

declare dso_local %struct.TYPE_10__* @_glfwPlatformGetTls(i32*) #1

declare dso_local i64 @IsWindowsVistaOrGreater(...) #1

declare dso_local i64 @IsWindows8OrGreater(...) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @DwmIsCompositionEnabled(i64*) #1

declare dso_local i32 @wglSwapIntervalEXT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
