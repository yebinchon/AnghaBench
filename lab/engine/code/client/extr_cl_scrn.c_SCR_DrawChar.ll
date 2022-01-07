; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_scrn.c_SCR_DrawChar.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_scrn.c_SCR_DrawChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (float, float, float, float, float, float, float, float, i32)* }
%struct.TYPE_4__ = type { i32 }

@re = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@cls = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, float, i32)* @SCR_DrawChar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SCR_DrawChar(i32 %0, i32 %1, float %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store float %2, float* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = and i32 %17, 255
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 32
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %64

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = sitofp i32 %23 to float
  %25 = load float, float* %7, align 4
  %26 = fneg float %25
  %27 = fcmp olt float %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %64

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = sitofp i32 %30 to float
  store float %31, float* %13, align 4
  %32 = load i32, i32* %6, align 4
  %33 = sitofp i32 %32 to float
  store float %33, float* %14, align 4
  %34 = load float, float* %7, align 4
  store float %34, float* %15, align 4
  %35 = load float, float* %7, align 4
  store float %35, float* %16, align 4
  %36 = call i32 @SCR_AdjustFrom640(float* %13, float* %14, float* %15, float* %16)
  %37 = load i32, i32* %8, align 4
  %38 = ashr i32 %37, 4
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, 15
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = sitofp i32 %41 to double
  %43 = fmul double %42, 6.250000e-02
  %44 = fptrunc double %43 to float
  store float %44, float* %11, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sitofp i32 %45 to double
  %47 = fmul double %46, 6.250000e-02
  %48 = fptrunc double %47 to float
  store float %48, float* %12, align 4
  store float 6.250000e-02, float* %7, align 4
  %49 = load i32 (float, float, float, float, float, float, float, float, i32)*, i32 (float, float, float, float, float, float, float, float, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @re, i32 0, i32 0), align 8
  %50 = load float, float* %13, align 4
  %51 = load float, float* %14, align 4
  %52 = load float, float* %15, align 4
  %53 = load float, float* %16, align 4
  %54 = load float, float* %12, align 4
  %55 = load float, float* %11, align 4
  %56 = load float, float* %12, align 4
  %57 = load float, float* %7, align 4
  %58 = fadd float %56, %57
  %59 = load float, float* %11, align 4
  %60 = load float, float* %7, align 4
  %61 = fadd float %59, %60
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cls, i32 0, i32 0), align 4
  %63 = call i32 %49(float %50, float %51, float %52, float %53, float %54, float %55, float %58, float %61, i32 %62)
  br label %64

64:                                               ; preds = %29, %28, %21
  ret void
}

declare dso_local i32 @SCR_AdjustFrom640(float*, float*, float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
