; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_monitors.c_list_modes.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_monitors.c_list_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { float, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Name: %s (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"secondary\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Current mode: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Virtual position: %i, %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Content scale: %f x %f\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"Physical size: %i x %i mm (%0.2f dpi at %i x %i)\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Monitor work area: %i x %i starting at %i, %i\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Modes:\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"%3u: %s\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c" (current mode)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @list_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_modes(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %2, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = call %struct.TYPE_7__* @glfwGetVideoMode(i32* %17)
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %15, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = call %struct.TYPE_7__* @glfwGetVideoModes(i32* %19, i32* %3)
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %16, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @glfwGetMonitorPos(i32* %21, i32* %4, i32* %5)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @glfwGetMonitorPhysicalSize(i32* %23, i32* %6, i32* %7)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @glfwGetMonitorContentScale(i32* %25, float* %13, float* %14)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @glfwGetMonitorWorkarea(i32* %27, i32* %9, i32* %10, i32* %11, i32* %12)
  %29 = load i32*, i32** %2, align 8
  %30 = call i8* @glfwGetMonitorName(i32* %29)
  %31 = call i32* (...) @glfwGetPrimaryMonitor()
  %32 = load i32*, i32** %2, align 8
  %33 = icmp eq i32* %31, %32
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %38 = call i8* @format_mode(%struct.TYPE_7__* %37)
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %38)
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load float, float* %13, align 4
  %44 = fpext float %43 to double
  %45 = load float, float* %14, align 4
  %46 = fpext float %45 to double
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), double %44, double %46)
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load float, float* %51, align 4
  %53 = fmul float %52, 0x4039666660000000
  %54 = load i32, i32* %6, align 4
  %55 = sitofp i32 %54 to float
  %56 = fdiv float %53, %55
  %57 = fpext float %56 to double
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load float, float* %59, align 4
  %61 = fpext float %60 to double
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %48, i32 %49, double %57, double %61, i32 %64)
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 %66, i32 %67, i32 %68, i32 %69)
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %95, %1
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %3, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %98

76:                                               ; preds = %72
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 %80
  %82 = call i8* @format_mode(%struct.TYPE_7__* %81)
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %77, i8* %82)
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i64 %87
  %89 = call i64 @memcmp(%struct.TYPE_7__* %84, %struct.TYPE_7__* %88, i32 8)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %76
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %76
  %94 = call i32 @putchar(i8 signext 10)
  br label %95

95:                                               ; preds = %93
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %72

98:                                               ; preds = %72
  ret void
}

declare dso_local %struct.TYPE_7__* @glfwGetVideoMode(i32*) #1

declare dso_local %struct.TYPE_7__* @glfwGetVideoModes(i32*, i32*) #1

declare dso_local i32 @glfwGetMonitorPos(i32*, i32*, i32*) #1

declare dso_local i32 @glfwGetMonitorPhysicalSize(i32*, i32*, i32*) #1

declare dso_local i32 @glfwGetMonitorContentScale(i32*, float*, float*) #1

declare dso_local i32 @glfwGetMonitorWorkarea(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @glfwGetMonitorName(i32*) #1

declare dso_local i32* @glfwGetPrimaryMonitor(...) #1

declare dso_local i8* @format_mode(%struct.TYPE_7__*) #1

declare dso_local i64 @memcmp(%struct.TYPE_7__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
