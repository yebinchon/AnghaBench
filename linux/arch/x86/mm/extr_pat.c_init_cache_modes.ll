; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pat.c_init_cache_modes.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pat.c_init_cache_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@init_cm_done = common dso_local global i64 0, align 8
@X86_FEATURE_PAT = common dso_local global i32 0, align 4
@MSR_IA32_CR_PAT = common dso_local global i32 0, align 4
@WB = common dso_local global i32 0, align 4
@WT = common dso_local global i32 0, align 4
@UC_MINUS = common dso_local global i32 0, align 4
@UC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_cache_modes() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i64, i64* @init_cm_done, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %43

5:                                                ; preds = %0
  %6 = load i32, i32* @X86_FEATURE_PAT, align 4
  %7 = call i64 @boot_cpu_has(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load i32, i32* @MSR_IA32_CR_PAT, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @rdmsrl(i32 %10, i32 %11)
  br label %13

13:                                               ; preds = %9, %5
  %14 = load i32, i32* %1, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %40, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* @WB, align 4
  %18 = call i32 @PAT(i32 0, i32 %17)
  %19 = load i32, i32* @WT, align 4
  %20 = call i32 @PAT(i32 1, i32 %19)
  %21 = or i32 %18, %20
  %22 = load i32, i32* @UC_MINUS, align 4
  %23 = call i32 @PAT(i32 2, i32 %22)
  %24 = or i32 %21, %23
  %25 = load i32, i32* @UC, align 4
  %26 = call i32 @PAT(i32 3, i32 %25)
  %27 = or i32 %24, %26
  %28 = load i32, i32* @WB, align 4
  %29 = call i32 @PAT(i32 4, i32 %28)
  %30 = or i32 %27, %29
  %31 = load i32, i32* @WT, align 4
  %32 = call i32 @PAT(i32 5, i32 %31)
  %33 = or i32 %30, %32
  %34 = load i32, i32* @UC_MINUS, align 4
  %35 = call i32 @PAT(i32 6, i32 %34)
  %36 = or i32 %33, %35
  %37 = load i32, i32* @UC, align 4
  %38 = call i32 @PAT(i32 7, i32 %37)
  %39 = or i32 %36, %38
  store i32 %39, i32* %1, align 4
  br label %40

40:                                               ; preds = %16, %13
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @__init_cache_modes(i32 %41)
  br label %43

43:                                               ; preds = %40, %4
  ret void
}

declare dso_local i64 @boot_cpu_has(i32) #1

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @PAT(i32, i32) #1

declare dso_local i32 @__init_cache_modes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
