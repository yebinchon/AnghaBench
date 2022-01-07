; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_msi-xlp.c_xlp_msi_disable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_msi-xlp.c_xlp_msi_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.xlp_msi_data = type { i32, i32, i32 }

@PCIE_9XX_MSI_EN = common dso_local global i32 0, align 4
@PCIE_MSI_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @xlp_msi_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlp_msi_disable(%struct.irq_data* %0) #0 {
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
  %18 = xor i32 %17, -1
  %19 = load %struct.xlp_msi_data*, %struct.xlp_msi_data** %3, align 8
  %20 = getelementptr inbounds %struct.xlp_msi_data, %struct.xlp_msi_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = call i64 (...) @cpu_is_xlp9xx()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %1
  %26 = load %struct.xlp_msi_data*, %struct.xlp_msi_data** %3, align 8
  %27 = getelementptr inbounds %struct.xlp_msi_data, %struct.xlp_msi_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PCIE_9XX_MSI_EN, align 4
  %30 = load %struct.xlp_msi_data*, %struct.xlp_msi_data** %3, align 8
  %31 = getelementptr inbounds %struct.xlp_msi_data, %struct.xlp_msi_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @nlm_write_reg(i32 %28, i32 %29, i32 %32)
  br label %43

34:                                               ; preds = %1
  %35 = load %struct.xlp_msi_data*, %struct.xlp_msi_data** %3, align 8
  %36 = getelementptr inbounds %struct.xlp_msi_data, %struct.xlp_msi_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PCIE_MSI_EN, align 4
  %39 = load %struct.xlp_msi_data*, %struct.xlp_msi_data** %3, align 8
  %40 = getelementptr inbounds %struct.xlp_msi_data, %struct.xlp_msi_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @nlm_write_reg(i32 %37, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %34, %25
  %44 = load %struct.xlp_msi_data*, %struct.xlp_msi_data** %3, align 8
  %45 = getelementptr inbounds %struct.xlp_msi_data, %struct.xlp_msi_data* %44, i32 0, i32 1
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
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
