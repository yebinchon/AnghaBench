; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_tlbflush_32.c_local_flush_tlb_kernel_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_tlbflush_32.c_local_flush_tlb_kernel_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@MMU_NTLB_ENTRIES = common dso_local global i32 0, align 4
@init_mm = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local_flush_tlb_kernel_range(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = call i32 (...) @smp_processor_id()
  store i32 %10, i32* %5, align 4
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @local_irq_save(i64 %11)
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* %3, align 8
  %15 = sub i64 %13, %14
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = add i64 %15, %18
  %20 = load i64, i64* @PAGE_SHIFT, align 8
  %21 = lshr i64 %19, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @MMU_NTLB_ENTRIES, align 4
  %25 = sdiv i32 %24, 4
  %26 = icmp sgt i32 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = call i32 (...) @local_flush_tlb_all()
  br label %61

29:                                               ; preds = %2
  %30 = call i64 (...) @get_asid()
  store i64 %30, i64* %9, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @cpu_asid(i32 %31, i32* @init_mm)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* @PAGE_MASK, align 8
  %34 = load i64, i64* %3, align 8
  %35 = and i64 %34, %33
  store i64 %35, i64* %3, align 8
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %4, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* @PAGE_MASK, align 8
  %42 = load i64, i64* %4, align 8
  %43 = and i64 %42, %41
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @set_asid(i64 %44)
  br label %46

46:                                               ; preds = %50, %29
  %47 = load i64, i64* %3, align 8
  %48 = load i64, i64* %4, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %3, align 8
  %53 = call i32 @local_flush_tlb_one(i64 %51, i64 %52)
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %3, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %3, align 8
  br label %46

58:                                               ; preds = %46
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @set_asid(i64 %59)
  br label %61

61:                                               ; preds = %58, %27
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @local_irq_restore(i64 %62)
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_flush_tlb_all(...) #1

declare dso_local i64 @get_asid(...) #1

declare dso_local i64 @cpu_asid(i32, i32*) #1

declare dso_local i32 @set_asid(i64) #1

declare dso_local i32 @local_flush_tlb_one(i64, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
