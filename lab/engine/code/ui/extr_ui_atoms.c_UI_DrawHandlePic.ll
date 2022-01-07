; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_atoms.c_UI_DrawHandlePic.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_atoms.c_UI_DrawHandlePic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_DrawHandlePic(float %0, float %1, float %2, float %3, i32 %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store float %0, float* %6, align 4
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load float, float* %8, align 4
  %16 = fcmp olt float %15, 0.000000e+00
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load float, float* %8, align 4
  %19 = fneg float %18
  store float %19, float* %8, align 4
  store float 1.000000e+00, float* %11, align 4
  store float 0.000000e+00, float* %12, align 4
  br label %21

20:                                               ; preds = %5
  store float 0.000000e+00, float* %11, align 4
  store float 1.000000e+00, float* %12, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load float, float* %9, align 4
  %23 = fcmp olt float %22, 0.000000e+00
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load float, float* %9, align 4
  %26 = fneg float %25
  store float %26, float* %9, align 4
  store float 1.000000e+00, float* %13, align 4
  store float 0.000000e+00, float* %14, align 4
  br label %28

27:                                               ; preds = %21
  store float 0.000000e+00, float* %13, align 4
  store float 1.000000e+00, float* %14, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = call i32 @UI_AdjustFrom640(float* %6, float* %7, float* %8, float* %9)
  %30 = load float, float* %6, align 4
  %31 = load float, float* %7, align 4
  %32 = load float, float* %8, align 4
  %33 = load float, float* %9, align 4
  %34 = load float, float* %11, align 4
  %35 = load float, float* %13, align 4
  %36 = load float, float* %12, align 4
  %37 = load float, float* %14, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @trap_R_DrawStretchPic(float %30, float %31, float %32, float %33, float %34, float %35, float %36, float %37, i32 %38)
  ret void
}

declare dso_local i32 @UI_AdjustFrom640(float*, float*, float*, float*) #1

declare dso_local i32 @trap_R_DrawStretchPic(float, float, float, float, float, float, float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
