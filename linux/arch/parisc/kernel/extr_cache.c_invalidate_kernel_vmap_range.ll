; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_cache.c_invalidate_kernel_vmap_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_cache.c_invalidate_kernel_vmap_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_SMP = common dso_local global i32 0, align 4
@parisc_cache_flush_threshold = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @invalidate_kernel_vmap_range(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = ptrtoint i8* %7 to i64
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = add i64 %9, %11
  store i64 %12, i64* %6, align 8
  %13 = load i32, i32* @CONFIG_SMP, align 4
  %14 = call i32 @IS_ENABLED(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = call i32 (...) @arch_irqs_disabled()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %16, %2
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* @parisc_cache_flush_threshold, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @flush_tlb_kernel_range(i64 %25, i64 %26)
  %28 = call i32 (...) @flush_data_cache()
  br label %36

29:                                               ; preds = %19, %16
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @purge_kernel_dcache_range_asm(i64 %30, i64 %31)
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @flush_tlb_kernel_range(i64 %33, i64 %34)
  br label %36

36:                                               ; preds = %29, %24
  ret void
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @arch_irqs_disabled(...) #1

declare dso_local i32 @flush_tlb_kernel_range(i64, i64) #1

declare dso_local i32 @flush_data_cache(...) #1

declare dso_local i32 @purge_kernel_dcache_range_asm(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
