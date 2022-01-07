; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_drawtools.c_CG_DrawChar.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_drawtools.c_CG_DrawChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@cgs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_DrawChar(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = and i32 %20, 255
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 32
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  br label %61

25:                                               ; preds = %5
  %26 = load i32, i32* %6, align 4
  %27 = sitofp i32 %26 to float
  store float %27, float* %16, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sitofp i32 %28 to float
  store float %29, float* %17, align 4
  %30 = load i32, i32* %8, align 4
  %31 = sitofp i32 %30 to float
  store float %31, float* %18, align 4
  %32 = load i32, i32* %9, align 4
  %33 = sitofp i32 %32 to float
  store float %33, float* %19, align 4
  %34 = call i32 @CG_AdjustFrom640(float* %16, float* %17, float* %18, float* %19)
  %35 = load i32, i32* %10, align 4
  %36 = ashr i32 %35, 4
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %10, align 4
  %38 = and i32 %37, 15
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %11, align 4
  %40 = sitofp i32 %39 to double
  %41 = fmul double %40, 6.250000e-02
  %42 = fptrunc double %41 to float
  store float %42, float* %13, align 4
  %43 = load i32, i32* %12, align 4
  %44 = sitofp i32 %43 to double
  %45 = fmul double %44, 6.250000e-02
  %46 = fptrunc double %45 to float
  store float %46, float* %14, align 4
  store float 6.250000e-02, float* %15, align 4
  %47 = load float, float* %16, align 4
  %48 = load float, float* %17, align 4
  %49 = load float, float* %18, align 4
  %50 = load float, float* %19, align 4
  %51 = load float, float* %14, align 4
  %52 = load float, float* %13, align 4
  %53 = load float, float* %14, align 4
  %54 = load float, float* %15, align 4
  %55 = fadd float %53, %54
  %56 = load float, float* %13, align 4
  %57 = load float, float* %15, align 4
  %58 = fadd float %56, %57
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cgs, i32 0, i32 0, i32 0), align 4
  %60 = call i32 @trap_R_DrawStretchPic(float %47, float %48, float %49, float %50, float %51, float %52, float %55, float %58, i32 %59)
  br label %61

61:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @CG_AdjustFrom640(float*, float*, float*, float*) #1

declare dso_local i32 @trap_R_DrawStretchPic(float, float, float, float, float, float, float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
