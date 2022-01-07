; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_tsi108_pci.c_tsi108_clear_pci_error.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_tsi108_pci.c_tsi108_clear_pci_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TSI108_PB_OFFSET = common dso_local global i64 0, align 8
@TSI108_PB_ERRCS = common dso_local global i64 0, align 8
@TSI108_PB_AERR = common dso_local global i64 0, align 8
@TSI108_PB_ERRCS_ES = common dso_local global i32 0, align 4
@TSI108_PB_ISR = common dso_local global i64 0, align 8
@TSI108_PB_ISR_PBS_RD_ERR = common dso_local global i32 0, align 4
@TSI108_PCI_OFFSET = common dso_local global i64 0, align 8
@TSI108_PCI_CSR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tsi108_clear_pci_error(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i64, i64* @TSI108_PB_OFFSET, align 8
  %7 = load i64, i64* @TSI108_PB_ERRCS, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @tsi108_read_reg(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i64, i64* @TSI108_PB_OFFSET, align 8
  %11 = load i64, i64* @TSI108_PB_AERR, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @tsi108_read_reg(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @TSI108_PB_ERRCS_ES, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %1
  %19 = load i64, i64* @TSI108_PB_OFFSET, align 8
  %20 = load i64, i64* @TSI108_PB_ERRCS, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i32, i32* @TSI108_PB_ERRCS_ES, align 4
  %23 = call i32 @tsi108_write_reg(i64 %21, i32 %22)
  %24 = load i64, i64* @TSI108_PB_OFFSET, align 8
  %25 = load i64, i64* @TSI108_PB_ISR, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i32, i32* @TSI108_PB_ISR_PBS_RD_ERR, align 4
  %28 = call i32 @tsi108_write_reg(i64 %26, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, -16777216
  %31 = load i32, i32* %2, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %18
  %34 = load i64, i64* @TSI108_PCI_OFFSET, align 8
  %35 = load i64, i64* @TSI108_PCI_CSR, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @tsi108_read_reg(i64 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i64, i64* @TSI108_PCI_OFFSET, align 8
  %39 = load i64, i64* @TSI108_PCI_CSR, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @tsi108_write_reg(i64 %40, i32 %41)
  br label %43

43:                                               ; preds = %33, %18
  br label %44

44:                                               ; preds = %43, %1
  ret void
}

declare dso_local i32 @tsi108_read_reg(i64) #1

declare dso_local i32 @tsi108_write_reg(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
