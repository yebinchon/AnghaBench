; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_linux_joystick.c_handleAbsEvent.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_linux_joystick.c_handleAbsEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32**, %struct.input_absinfo* }
%struct.input_absinfo = type { i32, float }

@ABS_HAT0X = common dso_local global i32 0, align 4
@ABS_HAT3Y = common dso_local global i32 0, align 4
@handleAbsEvent.stateMap = internal constant [3 x [3 x i8]] [[3 x i8] c"\88\80\87", [3 x i8] c"\86\84\85", [3 x i8] c"\83\81\82"], align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32)* @handleAbsEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handleAbsEvent(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.input_absinfo*, align 8
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @ABS_HAT0X, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %86

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @ABS_HAT3Y, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %86

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @ABS_HAT0X, align 4
  %32 = sub nsw i32 %30, %31
  %33 = sdiv i32 %32, 2
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @ABS_HAT0X, align 4
  %36 = sub nsw i32 %34, %35
  %37 = srem i32 %36, 2
  store i32 %37, i32* %9, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32**, i32*** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %10, align 8
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %29
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 0, i32* %52, align 4
  br label %71

53:                                               ; preds = %29
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 1, i32* %60, align 4
  br label %70

61:                                               ; preds = %53
  %62 = load i32, i32* %6, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 2, i32* %68, align 4
  br label %69

69:                                               ; preds = %64, %61
  br label %70

70:                                               ; preds = %69, %56
  br label %71

71:                                               ; preds = %70, %48
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* @handleAbsEvent.stateMap, i64 0, i64 %77
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [3 x i8], [3 x i8]* %78, i64 0, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = call i32 @_glfwInputJoystickHat(%struct.TYPE_7__* %72, i32 %73, i8 signext %84)
  br label %124

86:                                               ; preds = %25, %3
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load %struct.input_absinfo*, %struct.input_absinfo** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %90, i64 %92
  store %struct.input_absinfo* %93, %struct.input_absinfo** %11, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sitofp i32 %94 to float
  store float %95, float* %12, align 4
  %96 = load %struct.input_absinfo*, %struct.input_absinfo** %11, align 8
  %97 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sitofp i32 %98 to float
  %100 = load %struct.input_absinfo*, %struct.input_absinfo** %11, align 8
  %101 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %100, i32 0, i32 1
  %102 = load float, float* %101, align 4
  %103 = fsub float %99, %102
  %104 = fptosi float %103 to i32
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %86
  %108 = load float, float* %12, align 4
  %109 = load %struct.input_absinfo*, %struct.input_absinfo** %11, align 8
  %110 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %109, i32 0, i32 1
  %111 = load float, float* %110, align 4
  %112 = fsub float %108, %111
  %113 = load i32, i32* %13, align 4
  %114 = sitofp i32 %113 to float
  %115 = fdiv float %112, %114
  store float %115, float* %12, align 4
  %116 = load float, float* %12, align 4
  %117 = fmul float %116, 2.000000e+00
  %118 = fsub float %117, 1.000000e+00
  store float %118, float* %12, align 4
  br label %119

119:                                              ; preds = %107, %86
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %121 = load i32, i32* %7, align 4
  %122 = load float, float* %12, align 4
  %123 = call i32 @_glfwInputJoystickAxis(%struct.TYPE_7__* %120, i32 %121, float %122)
  br label %124

124:                                              ; preds = %119, %71
  ret void
}

declare dso_local i32 @_glfwInputJoystickHat(%struct.TYPE_7__*, i32, i8 signext) #1

declare dso_local i32 @_glfwInputJoystickAxis(%struct.TYPE_7__*, i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
