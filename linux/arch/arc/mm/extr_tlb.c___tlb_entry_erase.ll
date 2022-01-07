; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/mm/extr_tlb.c___tlb_entry_erase.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/mm/extr_tlb.c___tlb_entry_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARC_REG_TLBPD1 = common dso_local global i32 0, align 4
@ARC_REG_TLBPD1HI = common dso_local global i32 0, align 4
@ARC_REG_TLBPD0 = common dso_local global i32 0, align 4
@ARC_REG_TLBCOMMAND = common dso_local global i32 0, align 4
@TLBWrite = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__tlb_entry_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__tlb_entry_erase() #0 {
  %1 = load i32, i32* @ARC_REG_TLBPD1, align 4
  %2 = call i32 @write_aux_reg(i32 %1, i32 0)
  %3 = call i64 (...) @is_pae40_enabled()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @ARC_REG_TLBPD1HI, align 4
  %7 = call i32 @write_aux_reg(i32 %6, i32 0)
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i32, i32* @ARC_REG_TLBPD0, align 4
  %10 = call i32 @write_aux_reg(i32 %9, i32 0)
  %11 = load i32, i32* @ARC_REG_TLBCOMMAND, align 4
  %12 = load i32, i32* @TLBWrite, align 4
  %13 = call i32 @write_aux_reg(i32 %11, i32 %12)
  ret void
}

declare dso_local i32 @write_aux_reg(i32, i32) #1

declare dso_local i64 @is_pae40_enabled(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
