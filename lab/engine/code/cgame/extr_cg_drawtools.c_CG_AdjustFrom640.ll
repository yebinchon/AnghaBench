; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_drawtools.c_CG_AdjustFrom640.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_drawtools.c_CG_AdjustFrom640.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, float, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@cgs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_AdjustFrom640(float* %0, float* %1, float* %2, float* %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %9 = load float, float* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cgs, i32 0, i32 0), align 4
  %10 = load float*, float** %5, align 8
  %11 = load float, float* %10, align 4
  %12 = fmul float %11, %9
  store float %12, float* %10, align 4
  %13 = load float, float* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cgs, i32 0, i32 1), align 4
  %14 = load float*, float** %6, align 8
  %15 = load float, float* %14, align 4
  %16 = fmul float %15, %13
  store float %16, float* %14, align 4
  %17 = load float, float* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cgs, i32 0, i32 0), align 4
  %18 = load float*, float** %7, align 8
  %19 = load float, float* %18, align 4
  %20 = fmul float %19, %17
  store float %20, float* %18, align 4
  %21 = load float, float* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cgs, i32 0, i32 1), align 4
  %22 = load float*, float** %8, align 8
  %23 = load float, float* %22, align 4
  %24 = fmul float %23, %21
  store float %24, float* %22, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
