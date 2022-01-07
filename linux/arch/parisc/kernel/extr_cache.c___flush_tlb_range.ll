; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_cache.c___flush_tlb_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_cache.c___flush_tlb_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_SMP = common dso_local global i32 0, align 4
@parisc_tlb_flush_threshold = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__flush_tlb_range(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* @CONFIG_SMP, align 4
  %10 = call i32 @IS_ENABLED(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = call i32 (...) @arch_irqs_disabled()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %12, %3
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = sub i64 %16, %17
  %19 = load i64, i64* @parisc_tlb_flush_threshold, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = call i32 (...) @flush_tlb_all()
  store i32 1, i32* %4, align 4
  br label %43

23:                                               ; preds = %15, %12
  br label %24

24:                                               ; preds = %28, %23
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @purge_tlb_start(i64 %29)
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @mtsp(i64 %31, i32 1)
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @pdtlb(i64 %33)
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @pitlb(i64 %35)
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @purge_tlb_end(i64 %37)
  %39 = load i64, i64* @PAGE_SIZE, align 8
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %6, align 8
  br label %24

42:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %21
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @arch_irqs_disabled(...) #1

declare dso_local i32 @flush_tlb_all(...) #1

declare dso_local i32 @purge_tlb_start(i64) #1

declare dso_local i32 @mtsp(i64, i32) #1

declare dso_local i32 @pdtlb(i64) #1

declare dso_local i32 @pitlb(i64) #1

declare dso_local i32 @purge_tlb_end(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
