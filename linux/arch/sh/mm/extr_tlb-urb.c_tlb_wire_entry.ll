; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_tlb-urb.c_tlb_wire_entry.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_tlb-urb.c_tlb_wire_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@MMUCR = common dso_local global i32 0, align 4
@MMUCR_URB = common dso_local global i64 0, align 8
@MMUCR_URB_SHIFT = common dso_local global i64 0, align 8
@MMUCR_URC = common dso_local global i64 0, align 8
@MMUCR_URB_NENTRIES = common dso_local global i32 0, align 4
@MMUCR_URC_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tlb_wire_entry(%struct.vm_area_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* %8, align 8
  %11 = call i32 @local_irq_save(i64 %10)
  %12 = load i32, i32* @MMUCR, align 4
  %13 = call i64 @__raw_readl(i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @MMUCR_URB, align 8
  %16 = and i64 %14, %15
  %17 = load i64, i64* @MMUCR_URB_SHIFT, align 8
  %18 = lshr i64 %16, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load i64, i64* @MMUCR_URC, align 8
  %21 = xor i64 %20, -1
  %22 = load i64, i64* %7, align 8
  %23 = and i64 %22, %21
  store i64 %23, i64* %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @MMUCR_URB_NENTRIES, align 4
  %32 = srem i32 %30, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @MMUCR_URC_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %7, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i32, i32* @MMUCR, align 4
  %41 = call i32 @__raw_writel(i64 %39, i32 %40)
  %42 = call i32 (...) @ctrl_barrier()
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @__update_tlb(%struct.vm_area_struct* %43, i64 %44, i32 %45)
  %47 = load i32, i32* @MMUCR, align 4
  %48 = call i64 @__raw_readl(i32 %47)
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* @MMUCR_URB, align 8
  %50 = xor i64 %49, -1
  %51 = load i64, i64* %7, align 8
  %52 = and i64 %51, %50
  store i64 %52, i64* %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i64, i64* @MMUCR_URB_SHIFT, align 8
  %55 = trunc i64 %54 to i32
  %56 = shl i32 %53, %55
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %7, align 8
  %59 = or i64 %58, %57
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i32, i32* @MMUCR, align 4
  %62 = call i32 @__raw_writel(i64 %60, i32 %61)
  %63 = call i32 (...) @ctrl_barrier()
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @local_irq_restore(i64 %64)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

declare dso_local i32 @ctrl_barrier(...) #1

declare dso_local i32 @__update_tlb(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
