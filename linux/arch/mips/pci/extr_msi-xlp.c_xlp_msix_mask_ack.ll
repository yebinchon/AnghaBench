; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_msi-xlp.c_xlp_msix_mask_ack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_msi-xlp.c_xlp_msix_mask_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.xlp_msi_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@XLP_MSIXVEC_PER_LINK = common dso_local global i32 0, align 4
@PCIE_MSIX_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @xlp_msix_mask_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlp_msix_mask_ack(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.xlp_msi_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @nlm_irq_msixvec(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @nlm_irq_msixlink(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %15 = call i32 @pci_msi_mask_irq(%struct.irq_data* %14)
  %16 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %17 = call %struct.xlp_msi_data* @irq_data_get_irq_chip_data(%struct.irq_data* %16)
  store %struct.xlp_msi_data* %17, %struct.xlp_msi_data** %3, align 8
  %18 = call i64 (...) @cpu_is_xlp9xx()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @PCIE_9XX_MSIX_STATUSX(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @XLP_MSIXVEC_PER_LINK, align 4
  %25 = srem i32 %23, %24
  store i32 %25, i32* %7, align 4
  br label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @PCIE_MSIX_STATUS, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %26, %20
  %30 = load %struct.xlp_msi_data*, %struct.xlp_msi_data** %3, align 8
  %31 = getelementptr inbounds %struct.xlp_msi_data, %struct.xlp_msi_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = shl i32 1, %34
  %36 = call i32 @nlm_write_reg(i32 %32, i32 %33, i32 %35)
  %37 = call i64 (...) @cpu_is_xlp9xx()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %29
  %40 = load %struct.xlp_msi_data*, %struct.xlp_msi_data** %3, align 8
  %41 = getelementptr inbounds %struct.xlp_msi_data, %struct.xlp_msi_data* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @PIC_IRT_PCIE_MSIX_INDEX(i32 %45)
  %47 = call i32 @nlm_pic_ack(i32 %44, i32 %46)
  br label %48

48:                                               ; preds = %39, %29
  ret void
}

declare dso_local i32 @nlm_irq_msixvec(i32) #1

declare dso_local i32 @nlm_irq_msixlink(i32) #1

declare dso_local i32 @pci_msi_mask_irq(%struct.irq_data*) #1

declare dso_local %struct.xlp_msi_data* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i64 @cpu_is_xlp9xx(...) #1

declare dso_local i32 @PCIE_9XX_MSIX_STATUSX(i32) #1

declare dso_local i32 @nlm_write_reg(i32, i32, i32) #1

declare dso_local i32 @nlm_pic_ack(i32, i32) #1

declare dso_local i32 @PIC_IRT_PCIE_MSIX_INDEX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
