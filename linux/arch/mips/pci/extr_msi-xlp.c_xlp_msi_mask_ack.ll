; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_msi-xlp.c_xlp_msi_mask_ack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_msi-xlp.c_xlp_msi_mask_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.xlp_msi_data = type { i32 }

@PCIE_9XX_MSI_STATUS = common dso_local global i32 0, align 4
@PCIE_MSI_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @xlp_msi_mask_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlp_msi_mask_ack(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.xlp_msi_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.xlp_msi_data* @irq_data_get_irq_chip_data(%struct.irq_data* %6)
  store %struct.xlp_msi_data* %7, %struct.xlp_msi_data** %3, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @nlm_irq_msilink(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %13 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @nlm_irq_msivec(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %17 = call i32 @xlp_msi_disable(%struct.irq_data* %16)
  %18 = call i64 (...) @cpu_is_xlp9xx()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.xlp_msi_data*, %struct.xlp_msi_data** %3, align 8
  %22 = getelementptr inbounds %struct.xlp_msi_data, %struct.xlp_msi_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PCIE_9XX_MSI_STATUS, align 4
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 1, %25
  %27 = call i32 @nlm_write_reg(i32 %23, i32 %24, i32 %26)
  br label %36

28:                                               ; preds = %1
  %29 = load %struct.xlp_msi_data*, %struct.xlp_msi_data** %3, align 8
  %30 = getelementptr inbounds %struct.xlp_msi_data, %struct.xlp_msi_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PCIE_MSI_STATUS, align 4
  %33 = load i32, i32* %5, align 4
  %34 = shl i32 1, %33
  %35 = call i32 @nlm_write_reg(i32 %31, i32 %32, i32 %34)
  br label %36

36:                                               ; preds = %28, %20
  ret void
}

declare dso_local %struct.xlp_msi_data* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @nlm_irq_msilink(i32) #1

declare dso_local i32 @nlm_irq_msivec(i32) #1

declare dso_local i32 @xlp_msi_disable(%struct.irq_data*) #1

declare dso_local i64 @cpu_is_xlp9xx(...) #1

declare dso_local i32 @nlm_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
