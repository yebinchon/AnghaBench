; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_tlb-urb.c_tlb_unwire_entry.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_tlb-urb.c_tlb_unwire_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MMUCR = common dso_local global i32 0, align 4
@MMUCR_URB = common dso_local global i64 0, align 8
@MMUCR_URB_SHIFT = common dso_local global i64 0, align 8
@MMUCR_URB_NENTRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tlb_unwire_entry() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i64, i64* %2, align 8
  %5 = call i32 @local_irq_save(i64 %4)
  %6 = load i32, i32* @MMUCR, align 4
  %7 = call i64 @__raw_readl(i32 %6)
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @MMUCR_URB, align 8
  %10 = and i64 %8, %9
  %11 = load i64, i64* @MMUCR_URB_SHIFT, align 8
  %12 = lshr i64 %10, %11
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %3, align 4
  %14 = load i64, i64* @MMUCR_URB, align 8
  %15 = xor i64 %14, -1
  %16 = load i64, i64* %1, align 8
  %17 = and i64 %16, %15
  store i64 %17, i64* %1, align 8
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @MMUCR_URB_NENTRIES, align 4
  %21 = icmp eq i32 %18, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @MMUCR_URB_NENTRIES, align 4
  %26 = srem i32 %24, %25
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i64, i64* @MMUCR_URB_SHIFT, align 8
  %29 = trunc i64 %28 to i32
  %30 = shl i32 %27, %29
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %1, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %1, align 8
  %34 = load i64, i64* %1, align 8
  %35 = load i32, i32* @MMUCR, align 4
  %36 = call i32 @__raw_writel(i64 %34, i32 %35)
  %37 = call i32 (...) @ctrl_barrier()
  %38 = load i64, i64* %2, align 8
  %39 = call i32 @local_irq_restore(i64 %38)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

declare dso_local i32 @ctrl_barrier(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
