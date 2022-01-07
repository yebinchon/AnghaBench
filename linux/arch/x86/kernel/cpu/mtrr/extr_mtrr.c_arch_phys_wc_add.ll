; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mtrr/extr_mtrr.c_arch_phys_wc_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mtrr/extr_mtrr.c_arch_phys_wc_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MTRR_TYPE_WRCOMB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Failed to add WC MTRR for [%p-%p]; performance may suffer.\00", align 1
@MTRR_TO_PHYS_WC_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_phys_wc_add(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = call i64 (...) @pat_enabled()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = call i32 (...) @mtrr_enabled()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  store i32 0, i32* %3, align 4
  br label %34

13:                                               ; preds = %9
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i32, i32* @MTRR_TYPE_WRCOMB, align 4
  %17 = call i32 @mtrr_add(i64 %14, i64 %15, i32 %16, i32 1)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %13
  %21 = load i64, i64* %4, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = add i64 %23, %24
  %26 = sub i64 %25, 1
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @pr_warn(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %27)
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %34

30:                                               ; preds = %13
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @MTRR_TO_PHYS_WC_OFFSET, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %30, %20, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @pat_enabled(...) #1

declare dso_local i32 @mtrr_enabled(...) #1

declare dso_local i32 @mtrr_add(i64, i64, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
