; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlb-r4k.c_flush_micro_tlb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlb-r4k.c_flush_micro_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOONGSON_DIAG_ITLB = common dso_local global i32 0, align 4
@LOONGSON_DIAG_DTLB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @flush_micro_tlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_micro_tlb() #0 {
  %1 = call i32 (...) @current_cpu_type()
  switch i32 %1, label %10 [
    i32 129, label %2
    i32 128, label %5
  ]

2:                                                ; preds = %0
  %3 = load i32, i32* @LOONGSON_DIAG_ITLB, align 4
  %4 = call i32 @write_c0_diag(i32 %3)
  br label %11

5:                                                ; preds = %0
  %6 = load i32, i32* @LOONGSON_DIAG_ITLB, align 4
  %7 = load i32, i32* @LOONGSON_DIAG_DTLB, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @write_c0_diag(i32 %8)
  br label %11

10:                                               ; preds = %0
  br label %11

11:                                               ; preds = %10, %5, %2
  ret void
}

declare dso_local i32 @current_cpu_type(...) #1

declare dso_local i32 @write_c0_diag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
