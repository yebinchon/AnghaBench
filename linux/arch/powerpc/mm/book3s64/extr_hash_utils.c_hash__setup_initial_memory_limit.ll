; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_utils.c_hash__setup_initial_memory_limit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_utils.c_hash__setup_initial_memory_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_FTR_HVMODE = common dso_local global i32 0, align 4
@ppc64_rma_size = common dso_local global i64 0, align 8
@CPU_FTR_ARCH_300 = common dso_local global i32 0, align 4
@u64 = common dso_local global i32 0, align 4
@SID_SHIFT_1T = common dso_local global i64 0, align 8
@ULONG_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hash__setup_initial_memory_limit(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp ne i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @BUG_ON(i32 %7)
  %9 = load i32, i32* @CPU_FTR_HVMODE, align 4
  %10 = call i32 @early_cpu_has_feature(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  store i64 %13, i64* @ppc64_rma_size, align 8
  %14 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %15 = call i32 @early_cpu_has_feature(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @u64, align 4
  %19 = load i64, i64* @ppc64_rma_size, align 8
  %20 = call i64 @min_t(i32 %18, i64 %19, i64 1073741824)
  store i64 %20, i64* @ppc64_rma_size, align 8
  br label %27

21:                                               ; preds = %12
  %22 = load i32, i32* @u64, align 4
  %23 = load i64, i64* @ppc64_rma_size, align 8
  %24 = load i64, i64* @SID_SHIFT_1T, align 8
  %25 = shl i64 1, %24
  %26 = call i64 @min_t(i32 %22, i64 %23, i64 %25)
  store i64 %26, i64* @ppc64_rma_size, align 8
  br label %27

27:                                               ; preds = %21, %17
  %28 = load i64, i64* @ppc64_rma_size, align 8
  %29 = call i32 @memblock_set_current_limit(i64 %28)
  br label %32

30:                                               ; preds = %2
  %31 = load i64, i64* @ULONG_MAX, align 8
  store i64 %31, i64* @ppc64_rma_size, align 8
  br label %32

32:                                               ; preds = %30, %27
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @early_cpu_has_feature(i32) #1

declare dso_local i64 @min_t(i32, i64, i64) #1

declare dso_local i32 @memblock_set_current_limit(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
