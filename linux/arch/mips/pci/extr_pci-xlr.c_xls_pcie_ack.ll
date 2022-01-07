; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-xlr.c_xls_pcie_ack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-xlr.c_xls_pcie_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@NETLOGIC_IO_PCIE_1_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @xls_pcie_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xls_pcie_ack(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %4 = load i32, i32* @NETLOGIC_IO_PCIE_1_OFFSET, align 4
  %5 = call i32 @nlm_mmio_base(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %21 [
    i32 131, label %9
    i32 130, label %12
    i32 129, label %15
    i32 128, label %18
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @nlm_write_reg(i32 %10, i32 36, i32 -1)
  br label %21

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @nlm_write_reg(i32 %13, i32 37, i32 -1)
  br label %21

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @nlm_write_reg(i32 %16, i32 100, i32 -1)
  br label %21

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @nlm_write_reg(i32 %19, i32 101, i32 -1)
  br label %21

21:                                               ; preds = %1, %18, %15, %12, %9
  ret void
}

declare dso_local i32 @nlm_mmio_base(i32) #1

declare dso_local i32 @nlm_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
