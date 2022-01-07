; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlb-r4k.c_local_flush_tlb_one.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlb-r4k.c_local_flush_tlb_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local_flush_tlb_one(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @local_irq_save(i64 %6)
  %8 = call i32 (...) @read_c0_entryhi()
  store i32 %8, i32* %4, align 4
  %9 = call i32 (...) @htw_stop()
  %10 = load i32, i32* @PAGE_MASK, align 4
  %11 = shl i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* %2, align 8
  %14 = and i64 %13, %12
  store i64 %14, i64* %2, align 8
  %15 = load i64, i64* %2, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @write_c0_entryhi(i32 %16)
  %18 = call i32 (...) @mtc0_tlbw_hazard()
  %19 = call i32 (...) @tlb_probe()
  %20 = call i32 (...) @tlb_probe_hazard()
  %21 = call i32 (...) @read_c0_index()
  store i32 %21, i32* %5, align 4
  %22 = call i32 @write_c0_entrylo0(i32 0)
  %23 = call i32 @write_c0_entrylo1(i32 0)
  %24 = load i32, i32* %5, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @UNIQUE_ENTRYHI(i32 %27)
  %29 = call i32 @write_c0_entryhi(i32 %28)
  %30 = call i32 (...) @mtc0_tlbw_hazard()
  %31 = call i32 (...) @tlb_write_indexed()
  %32 = call i32 (...) @tlbw_use_hazard()
  br label %33

33:                                               ; preds = %26, %1
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @write_c0_entryhi(i32 %34)
  %36 = call i32 (...) @htw_start()
  %37 = call i32 (...) @flush_micro_tlb()
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @local_irq_restore(i64 %38)
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

declare dso_local i32 @flush_micro_tlb(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
