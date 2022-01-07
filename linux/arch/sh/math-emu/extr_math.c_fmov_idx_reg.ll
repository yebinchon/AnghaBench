; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/math-emu/extr_math.c_fmov_idx_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/math-emu/extr_math.c_fmov_idx_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_fpu_soft_struct = type { i32 }
%struct.pt_regs = type { i32 }

@FPSCR_SZ = common dso_local global i64 0, align 8
@FRn = common dso_local global i32 0, align 4
@Rm = common dso_local global i64 0, align 8
@R0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_fpu_soft_struct*, %struct.pt_regs*, i32, i32)* @fmov_idx_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fmov_idx_reg(%struct.sh_fpu_soft_struct* %0, %struct.pt_regs* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sh_fpu_soft_struct*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sh_fpu_soft_struct* %0, %struct.sh_fpu_soft_struct** %5, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i64, i64* @FPSCR_SZ, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @FMOV_EXT(i32 %12)
  %14 = load i32, i32* @FRn, align 4
  %15 = load i64, i64* @Rm, align 8
  %16 = load i64, i64* @R0, align 8
  %17 = add nsw i64 %15, %16
  %18 = add nsw i64 %17, 4
  %19 = call i32 @READ(i32 %14, i64 %18)
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @FRn, align 4
  %23 = load i64, i64* @Rm, align 8
  %24 = load i64, i64* @R0, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @READ(i32 %22, i64 %25)
  br label %33

27:                                               ; preds = %4
  %28 = load i32, i32* @FRn, align 4
  %29 = load i64, i64* @Rm, align 8
  %30 = load i64, i64* @R0, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @READ(i32 %28, i64 %31)
  br label %33

33:                                               ; preds = %27, %11
  ret i32 0
}

declare dso_local i32 @FMOV_EXT(i32) #1

declare dso_local i32 @READ(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
