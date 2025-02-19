; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_q_math.c_Q_acos.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_q_math.c_Q_acos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @Q_acos(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  %5 = load float, float* %3, align 4
  %6 = call float @acos(float %5)
  store float %6, float* %4, align 4
  %7 = load float, float* %4, align 4
  %8 = load float, float* @M_PI, align 4
  %9 = fcmp ogt float %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load float, float* @M_PI, align 4
  store float %11, float* %2, align 4
  br label %21

12:                                               ; preds = %1
  %13 = load float, float* %4, align 4
  %14 = load float, float* @M_PI, align 4
  %15 = fneg float %14
  %16 = fcmp olt float %13, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load float, float* @M_PI, align 4
  store float %18, float* %2, align 4
  br label %21

19:                                               ; preds = %12
  %20 = load float, float* %4, align 4
  store float %20, float* %2, align 4
  br label %21

21:                                               ; preds = %19, %17, %10
  %22 = load float, float* %2, align 4
  ret float %22
}

declare dso_local float @acos(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
