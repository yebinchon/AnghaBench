; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/math-emu/extr_math.c_ffloat.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/math-emu/extr_math.c_ffloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_fpu_soft_struct = type { i32 }

@FP_DECL_EX = common dso_local global i32 0, align 4
@FPSCR_PR = common dso_local global i64 0, align 8
@D = common dso_local global i32 0, align 4
@DRn = common dso_local global i32 0, align 4
@S = common dso_local global i32 0, align 4
@FRn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_fpu_soft_struct*, i32)* @ffloat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffloat(%struct.sh_fpu_soft_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.sh_fpu_soft_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.sh_fpu_soft_struct* %0, %struct.sh_fpu_soft_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @FP_DECL_EX, align 4
  %6 = load i64, i64* @FPSCR_PR, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* @D, align 4
  %10 = load i32, i32* @DRn, align 4
  %11 = call i32 @EMU_FLOAT_X(i32 %9, i32 %10)
  br label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @S, align 4
  %14 = load i32, i32* @FRn, align 4
  %15 = call i32 @EMU_FLOAT_X(i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %12, %8
  ret i32 0
}

declare dso_local i32 @EMU_FLOAT_X(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
