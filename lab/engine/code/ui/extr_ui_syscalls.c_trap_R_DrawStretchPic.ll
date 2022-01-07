; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_syscalls.c_trap_R_DrawStretchPic.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_syscalls.c_trap_R_DrawStretchPic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UI_R_DRAWSTRETCHPIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trap_R_DrawStretchPic(float %0, float %1, float %2, float %3, float %4, float %5, float %6, float %7, i32 %8) #0 {
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  store float %0, float* %10, align 4
  store float %1, float* %11, align 4
  store float %2, float* %12, align 4
  store float %3, float* %13, align 4
  store float %4, float* %14, align 4
  store float %5, float* %15, align 4
  store float %6, float* %16, align 4
  store float %7, float* %17, align 4
  store i32 %8, i32* %18, align 4
  %19 = load i32, i32* @UI_R_DRAWSTRETCHPIC, align 4
  %20 = load float, float* %10, align 4
  %21 = call i32 @PASSFLOAT(float %20)
  %22 = load float, float* %11, align 4
  %23 = call i32 @PASSFLOAT(float %22)
  %24 = load float, float* %12, align 4
  %25 = call i32 @PASSFLOAT(float %24)
  %26 = load float, float* %13, align 4
  %27 = call i32 @PASSFLOAT(float %26)
  %28 = load float, float* %14, align 4
  %29 = call i32 @PASSFLOAT(float %28)
  %30 = load float, float* %15, align 4
  %31 = call i32 @PASSFLOAT(float %30)
  %32 = load float, float* %16, align 4
  %33 = call i32 @PASSFLOAT(float %32)
  %34 = load float, float* %17, align 4
  %35 = call i32 @PASSFLOAT(float %34)
  %36 = load i32, i32* %18, align 4
  %37 = call i32 @syscall(i32 %19, i32 %21, i32 %23, i32 %25, i32 %27, i32 %29, i32 %31, i32 %33, i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @syscall(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PASSFLOAT(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
