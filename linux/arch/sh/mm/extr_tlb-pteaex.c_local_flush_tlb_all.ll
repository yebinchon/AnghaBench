; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_tlb-pteaex.c_local_flush_tlb_all.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_tlb-pteaex.c_local_flush_tlb_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MMUCR = common dso_local global i32 0, align 4
@MMUCR_URB = common dso_local global i64 0, align 8
@MMUCR_URB_SHIFT = common dso_local global i64 0, align 8
@MMUCR_URB_NENTRIES = common dso_local global i64 0, align 8
@MMU_UTLB_ADDRESS_ARRAY = common dso_local global i32 0, align 4
@MMU_ITLB_ADDRESS_ARRAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local_flush_tlb_all() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i64, i64* %1, align 8
  %5 = call i32 @local_irq_save(i64 %4)
  %6 = call i32 (...) @jump_to_uncached()
  %7 = load i32, i32* @MMUCR, align 4
  %8 = call i64 @__raw_readl(i32 %7)
  store i64 %8, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* @MMUCR_URB, align 8
  %11 = and i64 %9, %10
  %12 = load i64, i64* @MMUCR_URB_SHIFT, align 8
  %13 = lshr i64 %11, %12
  store i64 %13, i64* %2, align 8
  %14 = load i64, i64* %2, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = load i64, i64* @MMUCR_URB_NENTRIES, align 8
  store i64 %17, i64* %2, align 8
  br label %18

18:                                               ; preds = %16, %0
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %30, %18
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %2, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load i32, i32* @MMU_UTLB_ADDRESS_ARRAY, align 4
  %26 = load i32, i32* %3, align 4
  %27 = shl i32 %26, 8
  %28 = or i32 %25, %27
  %29 = call i32 @__raw_writel(i32 0, i32 %28)
  br label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %19

33:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %43, %33
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i32, i32* @MMU_ITLB_ADDRESS_ARRAY, align 4
  %39 = load i32, i32* %3, align 4
  %40 = shl i32 %39, 8
  %41 = or i32 %38, %40
  %42 = call i32 @__raw_writel(i32 0, i32 %41)
  br label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %34

46:                                               ; preds = %34
  %47 = call i32 (...) @back_to_cached()
  %48 = call i32 (...) @ctrl_barrier()
  %49 = load i64, i64* %1, align 8
  %50 = call i32 @local_irq_restore(i64 %49)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @jump_to_uncached(...) #1

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @back_to_cached(...) #1

declare dso_local i32 @ctrl_barrier(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
