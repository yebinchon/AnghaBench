; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_bg_pmove.c_PM_Accelerate.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_bg_pmove.c_PM_Accelerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { float* }
%struct.TYPE_5__ = type { float }

@pm = common dso_local global %struct.TYPE_6__* null, align 8
@pml = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float, float)* @PM_Accelerate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PM_Accelerate(float* %0, float %1, float %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store float* %0, float** %4, align 8
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pm, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load float*, float** %14, align 8
  %16 = load float*, float** %4, align 8
  %17 = call float @DotProduct(float* %15, float* %16)
  store float %17, float* %10, align 4
  %18 = load float, float* %5, align 4
  %19 = load float, float* %10, align 4
  %20 = fsub float %18, %19
  store float %20, float* %8, align 4
  %21 = load float, float* %8, align 4
  %22 = fcmp ole float %21, 0.000000e+00
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %60

24:                                               ; preds = %3
  %25 = load float, float* %6, align 4
  %26 = load float, float* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pml, i32 0, i32 0), align 4
  %27 = fmul float %25, %26
  %28 = load float, float* %5, align 4
  %29 = fmul float %27, %28
  store float %29, float* %9, align 4
  %30 = load float, float* %9, align 4
  %31 = load float, float* %8, align 4
  %32 = fcmp ogt float %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load float, float* %8, align 4
  store float %34, float* %9, align 4
  br label %35

35:                                               ; preds = %33, %24
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %57, %35
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %39, label %60

39:                                               ; preds = %36
  %40 = load float, float* %9, align 4
  %41 = load float*, float** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %41, i64 %43
  %45 = load float, float* %44, align 4
  %46 = fmul float %40, %45
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pm, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load float*, float** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %51, i64 %53
  %55 = load float, float* %54, align 4
  %56 = fadd float %55, %46
  store float %56, float* %54, align 4
  br label %57

57:                                               ; preds = %39
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %36

60:                                               ; preds = %23, %36
  ret void
}

declare dso_local float @DotProduct(float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
