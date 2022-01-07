; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_scrn.c_SCR_FillRect.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_scrn.c_SCR_FillRect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (float*)*, i32 (float, float, float, float, i32, i32, i32, i32, i32)* }
%struct.TYPE_4__ = type { i32 }

@re = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@cls = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SCR_FillRect(float %0, float %1, float %2, float %3, float* %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float*, align 8
  store float %0, float* %6, align 4
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store float* %4, float** %10, align 8
  %11 = load i32 (float*)*, i32 (float*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @re, i32 0, i32 0), align 8
  %12 = load float*, float** %10, align 8
  %13 = call i32 %11(float* %12)
  %14 = call i32 @SCR_AdjustFrom640(float* %6, float* %7, float* %8, float* %9)
  %15 = load i32 (float, float, float, float, i32, i32, i32, i32, i32)*, i32 (float, float, float, float, i32, i32, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @re, i32 0, i32 1), align 8
  %16 = load float, float* %6, align 4
  %17 = load float, float* %7, align 4
  %18 = load float, float* %8, align 4
  %19 = load float, float* %9, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cls, i32 0, i32 0), align 4
  %21 = call i32 %15(float %16, float %17, float %18, float %19, i32 0, i32 0, i32 0, i32 0, i32 %20)
  %22 = load i32 (float*)*, i32 (float*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @re, i32 0, i32 0), align 8
  %23 = call i32 %22(float* null)
  ret void
}

declare dso_local i32 @SCR_AdjustFrom640(float*, float*, float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
