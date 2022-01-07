; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_msi-xlp.c_xlp_msi_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_msi-xlp.c_xlp_msi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.xlp_msi_data = type { i32, i32, i32 }

@PCIE_9XX_MSI_EN = common dso_local global i32 0, align 4
@PCIE_MSI_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @xlp_msi_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlp_msi_enable(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.xlp_msi_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.xlp_msi_data* @irq_data_get_irq_chip_data(%struct.irq_data* %6)
  store %struct.xlp_msi_data* %7, %struct.xlp_msi_data** %3, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @nlm_irq_msivec(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.xlp_msi_data*, %struct.xlp_msi_data** %3, align 8
  %13 = getelementptr inbounds %struct.xlp_msi_data, %struct.xlp_msi_data* %12, i32 0, i32 1
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 1, %16
  %18 = load %struct.xlp_msi_data*, %struct.xlp_msi_data** %3, align 8
  %19 = getelementptr inbounds %struct.xlp_msi_data, %struct.xlp_msi_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = call i64 (...) @cpu_is_xlp9xx()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %1
  %25 = load %struct.xlp_msi_data*, %struct.xlp_msi_data** %3, align 8
  %26 = getelementptr inbounds %struct.xlp_msi_data, %struct.xlp_msi_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PCIE_9XX_MSI_EN, align 4
  %29 = load %struct.xlp_msi_data*, %struct.xlp_msi_data** %3, align 8
  %30 = getelementptr inbounds %struct.xlp_msi_data, %struct.xlp_msi_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @nlm_write_reg(i32 %27, i32 %28, i32 %31)
  br label %42

33:                                               ; preds = %1
  %34 = load %struct.xlp_msi_data*, %struct.xlp_msi_data** %3, align 8
  %35 = getelementptr inbounds %struct.xlp_msi_data, %struct.xlp_msi_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PCIE_MSI_EN, align 4
  %38 = load %struct.xlp_msi_data*, %struct.xlp_msi_data** %3, align 8
  %39 = getelementptr inbounds %struct.xlp_msi_data, %struct.xlp_msi_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @nlm_write_reg(i32 %36, i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %33, %24
  %43 = load %struct.xlp_msi_data*, %struct.xlp_msi_data** %3, align 8
  %44 = getelementptr inbounds %struct.xlp_msi_data, %struct.xlp_msi_data* %43, i32 0, i32 1
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  ret void
}

declare dso_local %struct.xlp_msi_data* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @nlm_irq_msivec(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @cpu_is_xlp9xx(...) #1

declare dso_local i32 @nlm_write_reg(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
