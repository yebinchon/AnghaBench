; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlb-r4k.c_local_flush_tlb_kernel_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlb-r4k.c_local_flush_tlb_kernel_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@current_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PAGE_MASK = common dso_local global i32 0, align 4

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
  %21 = add i64 %20, 1
  %22 = lshr i64 %21, 1
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cpu_data, i32 0, i32 1), align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cpu_data, i32 0, i32 0), align 8
  %28 = sdiv i32 %27, 8
  br label %32

29:                                               ; preds = %2
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cpu_data, i32 0, i32 0), align 8
  %31 = sdiv i32 %30, 2
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi i32 [ %28, %26 ], [ %31, %29 ]
  %34 = sext i32 %33 to i64
  %35 = icmp ule i64 %23, %34
  br i1 %35, label %36, label %88

36:                                               ; preds = %32
  %37 = call i32 (...) @read_c0_entryhi()
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @PAGE_MASK, align 4
  %39 = shl i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %3, align 8
  %42 = and i64 %41, %40
  store i64 %42, i64* %3, align 8
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = shl i32 %43, 1
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %4, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %4, align 8
  %49 = load i32, i32* @PAGE_MASK, align 4
  %50 = shl i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %4, align 8
  %53 = and i64 %52, %51
  store i64 %53, i64* %4, align 8
  %54 = call i32 (...) @htw_stop()
  br label %55

55:                                               ; preds = %77, %76, %36
  %56 = load i64, i64* %3, align 8
  %57 = load i64, i64* %4, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %55
  %60 = load i64, i64* %3, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @write_c0_entryhi(i32 %61)
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = shl i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %3, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %3, align 8
  %68 = call i32 (...) @mtc0_tlbw_hazard()
  %69 = call i32 (...) @tlb_probe()
  %70 = call i32 (...) @tlb_probe_hazard()
  %71 = call i32 (...) @read_c0_index()
  store i32 %71, i32* %8, align 4
  %72 = call i32 @write_c0_entrylo0(i32 0)
  %73 = call i32 @write_c0_entrylo1(i32 0)
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %59
  br label %55

77:                                               ; preds = %59
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @UNIQUE_ENTRYHI(i32 %78)
  %80 = call i32 @write_c0_entryhi(i32 %79)
  %81 = call i32 (...) @mtc0_tlbw_hazard()
  %82 = call i32 (...) @tlb_write_indexed()
  br label %55

83:                                               ; preds = %55
  %84 = call i32 (...) @tlbw_use_hazard()
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @write_c0_entryhi(i32 %85)
  %87 = call i32 (...) @htw_start()
  br label %90

88:                                               ; preds = %32
  %89 = call i32 (...) @local_flush_tlb_all()
  br label %90

90:                                               ; preds = %88, %83
  %91 = call i32 (...) @flush_micro_tlb()
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @local_irq_restore(i64 %92)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @read_c0_entryhi(...) #1

declare dso_local i32 @htw_stop(...) #1

declare dso_local i32 @write_c0_entryhi(i32) #1

declare dso_local i32 @mtc0_tlbw_hazard(...) #1

declare dso_local i32 @tlb_probe(...) #1

declare dso_local i32 @tlb_probe_hazard(...) #1

declare dso_local i32 @read_c0_index(...) #1

declare dso_local i32 @write_c0_entrylo0(i32) #1

declare dso_local i32 @write_c0_entrylo1(i32) #1

declare dso_local i32 @UNIQUE_ENTRYHI(i32) #1

declare dso_local i32 @tlb_write_indexed(...) #1

declare dso_local i32 @tlbw_use_hazard(...) #1

declare dso_local i32 @htw_start(...) #1

declare dso_local i32 @local_flush_tlb_all(...) #1

declare dso_local i32 @flush_micro_tlb(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
