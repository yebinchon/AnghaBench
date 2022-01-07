; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlb-r3k.c_local_flush_tlb_kernel_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlb-r3k.c_local_flush_tlb_kernel_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@current_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@KSEG0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local_flush_tlb_kernel_range(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @local_irq_save(i64 %9)
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* %3, align 8
  %13 = sub i64 %11, %12
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = add i64 %13, %16
  %18 = load i64, i64* @PAGE_SHIFT, align 8
  %19 = lshr i64 %17, %18
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cpu_data, i32 0, i32 0), align 8
  %22 = icmp ule i64 %20, %21
  br i1 %22, label %23, label %61

23:                                               ; preds = %2
  %24 = call i32 (...) @read_c0_entryhi()
  store i32 %24, i32* %7, align 4
  %25 = load i64, i64* @PAGE_MASK, align 8
  %26 = load i64, i64* %3, align 8
  %27 = and i64 %26, %25
  store i64 %27, i64* %3, align 8
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %4, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* @PAGE_MASK, align 8
  %34 = load i64, i64* %4, align 8
  %35 = and i64 %34, %33
  store i64 %35, i64* %4, align 8
  br label %36

36:                                               ; preds = %56, %55, %23
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %36
  %41 = load i64, i64* %3, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @write_c0_entryhi(i32 %42)
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %3, align 8
  %48 = call i32 (...) @tlb_probe()
  %49 = call i32 (...) @read_c0_index()
  store i32 %49, i32* %8, align 4
  %50 = call i32 @write_c0_entrylo0(i32 0)
  %51 = load i32, i32* @KSEG0, align 4
  %52 = call i32 @write_c0_entryhi(i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %40
  br label %36

56:                                               ; preds = %40
  %57 = call i32 (...) @tlb_write_indexed()
  br label %36

58:                                               ; preds = %36
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @write_c0_entryhi(i32 %59)
  br label %63

61:                                               ; preds = %2
  %62 = call i32 (...) @local_flush_tlb_all()
  br label %63

63:                                               ; preds = %61, %58
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @local_irq_restore(i64 %64)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @read_c0_entryhi(...) #1

declare dso_local i32 @write_c0_entryhi(i32) #1

declare dso_local i32 @tlb_probe(...) #1

declare dso_local i32 @read_c0_index(...) #1

declare dso_local i32 @write_c0_entrylo0(i32) #1

declare dso_local i32 @tlb_write_indexed(...) #1

declare dso_local i32 @local_flush_tlb_all(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
