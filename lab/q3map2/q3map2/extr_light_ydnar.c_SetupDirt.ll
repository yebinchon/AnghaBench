; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_ydnar.c_SetupDirt.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_ydnar.c_SetupDirt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYS_VRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"--- SetupDirt ---\0A\00", align 1
@DIRT_NUM_ANGLE_STEPS = common dso_local global float 0.000000e+00, align 4
@DIRT_CONE_ANGLE = common dso_local global i32 0, align 4
@DIRT_NUM_ELEVATION_STEPS = common dso_local global i32 0, align 4
@dirtVectors = common dso_local global i32** null, align 8
@numDirtVectors = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"%9d dirtmap vectors\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetupDirt() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = load i32, i32* @SYS_VRB, align 4
  %8 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %9 = load float, float* @DIRT_NUM_ANGLE_STEPS, align 4
  %10 = fdiv float 3.600000e+02, %9
  %11 = fptosi float %10 to i32
  %12 = call float @DEG2RAD(i32 %11)
  store float %12, float* %5, align 4
  %13 = load i32, i32* @DIRT_CONE_ANGLE, align 4
  %14 = load i32, i32* @DIRT_NUM_ELEVATION_STEPS, align 4
  %15 = sdiv i32 %13, %14
  %16 = call float @DEG2RAD(i32 %15)
  store float %16, float* %6, align 4
  store float 0.000000e+00, float* %3, align 4
  store i32 0, i32* %1, align 4
  store float 0.000000e+00, float* %3, align 4
  br label %17

17:                                               ; preds = %66, %0
  %18 = load i32, i32* %1, align 4
  %19 = sitofp i32 %18 to float
  %20 = load float, float* @DIRT_NUM_ANGLE_STEPS, align 4
  %21 = fcmp olt float %19, %20
  br i1 %21, label %22, label %72

22:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  %23 = load float, float* %6, align 4
  %24 = fmul float %23, 5.000000e-01
  store float %24, float* %4, align 4
  br label %25

25:                                               ; preds = %59, %22
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @DIRT_NUM_ELEVATION_STEPS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %65

29:                                               ; preds = %25
  %30 = load float, float* %4, align 4
  %31 = call i32 @sin(float %30)
  %32 = load float, float* %3, align 4
  %33 = call i32 @cos(float %32)
  %34 = mul nsw i32 %31, %33
  %35 = load i32**, i32*** @dirtVectors, align 8
  %36 = load i64, i64* @numDirtVectors, align 8
  %37 = getelementptr inbounds i32*, i32** %35, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %34, i32* %39, align 4
  %40 = load float, float* %4, align 4
  %41 = call i32 @sin(float %40)
  %42 = load float, float* %3, align 4
  %43 = call i32 @sin(float %42)
  %44 = mul nsw i32 %41, %43
  %45 = load i32**, i32*** @dirtVectors, align 8
  %46 = load i64, i64* @numDirtVectors, align 8
  %47 = getelementptr inbounds i32*, i32** %45, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %44, i32* %49, align 4
  %50 = load float, float* %4, align 4
  %51 = call i32 @cos(float %50)
  %52 = load i32**, i32*** @dirtVectors, align 8
  %53 = load i64, i64* @numDirtVectors, align 8
  %54 = getelementptr inbounds i32*, i32** %52, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  store i32 %51, i32* %56, align 4
  %57 = load i64, i64* @numDirtVectors, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* @numDirtVectors, align 8
  br label %59

59:                                               ; preds = %29
  %60 = load i32, i32* %2, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %2, align 4
  %62 = load float, float* %6, align 4
  %63 = load float, float* %4, align 4
  %64 = fadd float %63, %62
  store float %64, float* %4, align 4
  br label %25

65:                                               ; preds = %25
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %1, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %1, align 4
  %69 = load float, float* %5, align 4
  %70 = load float, float* %3, align 4
  %71 = fadd float %70, %69
  store float %71, float* %3, align 4
  br label %17

72:                                               ; preds = %17
  %73 = load i32, i32* @SYS_VRB, align 4
  %74 = load i64, i64* @numDirtVectors, align 8
  %75 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %74)
  ret void
}

declare dso_local i32 @Sys_FPrintf(i32, i8*, ...) #1

declare dso_local float @DEG2RAD(i32) #1

declare dso_local i32 @sin(float) #1

declare dso_local i32 @cos(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
