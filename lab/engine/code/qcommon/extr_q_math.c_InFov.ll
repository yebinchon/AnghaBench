; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_q_math.c_InFov.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_q_math.c_InFov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InFov(float* %0, float* %1, float* %2, float %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca float, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store float %3, float* %8, align 4
  %12 = load float, float* %8, align 4
  %13 = fpext float %12 to double
  %14 = fmul double %13, 5.000000e-01
  %15 = fptrunc double %14 to float
  store float %15, float* %11, align 4
  %16 = load float*, float** %6, align 8
  %17 = load float*, float** %5, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @VectorSubtract(float* %16, float* %17, i32* %18)
  %20 = load float*, float** %7, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* @qfalse, align 4
  %23 = call i32 @InverseRotation(float* %20, i32* %21, i32 %22)
  %24 = load i32*, i32** %9, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @vectoangles(i32* %24, i32* %25)
  %27 = load i32*, i32** %10, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @AngleNormalize180(i32 %29)
  %31 = call float @fabs(i32 %30)
  %32 = load float, float* %11, align 4
  %33 = fcmp olt float %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %4
  %35 = load i32*, i32** %10, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @AngleNormalize180(i32 %37)
  %39 = call float @fabs(i32 %38)
  %40 = load float, float* %11, align 4
  %41 = fcmp olt float %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @qtrue, align 4
  br label %46

44:                                               ; preds = %34, %4
  %45 = load i32, i32* @qfalse, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  ret i32 %47
}

declare dso_local i32 @VectorSubtract(float*, float*, i32*) #1

declare dso_local i32 @InverseRotation(float*, i32*, i32) #1

declare dso_local i32 @vectoangles(i32*, i32*) #1

declare dso_local float @fabs(i32) #1

declare dso_local i32 @AngleNormalize180(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
