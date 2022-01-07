; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_msi-xlp.c_xlp_setup_msi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_msi-xlp.c_xlp_setup_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_desc = type { i32 }
%struct.xlp_msi_data = type { i32, i32 }
%struct.msi_msg = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@XLP_MSIVEC_PER_LINK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.msi_desc*)* @xlp_setup_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlp_setup_msi(i32 %0, i32 %1, i32 %2, %struct.msi_desc* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.msi_desc*, align 8
  %10 = alloca %struct.xlp_msi_data*, align 8
  %11 = alloca %struct.msi_msg, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.msi_desc* %3, %struct.msi_desc** %9, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @PIC_PCIE_LINK_MSI_IRQ(i32 %19)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @nlm_link_msiirq(i32 %22, i32 0)
  %24 = call i32 @nlm_irq_to_xirq(i32 %21, i32 %23)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = call %struct.xlp_msi_data* @irq_get_chip_data(i32 %25)
  store %struct.xlp_msi_data* %26, %struct.xlp_msi_data** %10, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @MSI_LINK_ADDR(i32 %27, i32 %28)
  store i32 %29, i32* %18, align 4
  %30 = load %struct.xlp_msi_data*, %struct.xlp_msi_data** %10, align 8
  %31 = getelementptr inbounds %struct.xlp_msi_data, %struct.xlp_msi_data* %30, i32 0, i32 1
  %32 = load i64, i64* %12, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.xlp_msi_data*, %struct.xlp_msi_data** %10, align 8
  %35 = getelementptr inbounds %struct.xlp_msi_data, %struct.xlp_msi_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %67

38:                                               ; preds = %4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %18, align 4
  %42 = call i32 @xlp_config_link_msi(i32 %39, i32 %40, i32 %41)
  %43 = call i64 (...) @cpu_is_xlp9xx()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @PIC_9XX_IRT_PCIE_LINK_INDEX(i32 %46)
  store i32 %47, i32* %14, align 4
  br label %51

48:                                               ; preds = %38
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @PIC_IRT_PCIE_LINK_INDEX(i32 %49)
  store i32 %50, i32* %14, align 4
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @nlm_setup_pic_irq(i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = call %struct.TYPE_2__* @nlm_get_node(i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 (...) @nlm_threads_per_node()
  %65 = mul nsw i32 %63, %64
  %66 = call i32 @nlm_pic_init_irt(i32 %60, i32 %61, i32 %62, i32 %65, i32 1)
  br label %67

67:                                               ; preds = %51, %4
  %68 = load %struct.xlp_msi_data*, %struct.xlp_msi_data** %10, align 8
  %69 = getelementptr inbounds %struct.xlp_msi_data, %struct.xlp_msi_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @fls(i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @XLP_MSIVEC_PER_LINK, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %67
  %76 = load %struct.xlp_msi_data*, %struct.xlp_msi_data** %10, align 8
  %77 = getelementptr inbounds %struct.xlp_msi_data, %struct.xlp_msi_data* %76, i32 0, i32 1
  %78 = load i64, i64* %12, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %114

82:                                               ; preds = %67
  %83 = load i32, i32* %13, align 4
  %84 = shl i32 1, %83
  %85 = load %struct.xlp_msi_data*, %struct.xlp_msi_data** %10, align 8
  %86 = getelementptr inbounds %struct.xlp_msi_data, %struct.xlp_msi_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.xlp_msi_data*, %struct.xlp_msi_data** %10, align 8
  %90 = getelementptr inbounds %struct.xlp_msi_data, %struct.xlp_msi_data* %89, i32 0, i32 1
  %91 = load i64, i64* %12, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  %93 = load i32, i32* %18, align 4
  %94 = ashr i32 %93, 32
  %95 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %11, i32 0, i32 0
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %18, align 4
  %97 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %11, i32 0, i32 1
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* %13, align 4
  %99 = or i32 3072, %98
  %100 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %11, i32 0, i32 2
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %101, %102
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %16, align 4
  %105 = load %struct.msi_desc*, %struct.msi_desc** %9, align 8
  %106 = call i32 @irq_set_msi_desc(i32 %104, %struct.msi_desc* %105)
  store i32 %106, i32* %17, align 4
  %107 = load i32, i32* %17, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %82
  %110 = load i32, i32* %17, align 4
  store i32 %110, i32* %5, align 4
  br label %114

111:                                              ; preds = %82
  %112 = load i32, i32* %16, align 4
  %113 = call i32 @pci_write_msi_msg(i32 %112, %struct.msi_msg* %11)
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %111, %109, %75
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @PIC_PCIE_LINK_MSI_IRQ(i32) #1

declare dso_local i32 @nlm_irq_to_xirq(i32, i32) #1

declare dso_local i32 @nlm_link_msiirq(i32, i32) #1

declare dso_local %struct.xlp_msi_data* @irq_get_chip_data(i32) #1

declare dso_local i32 @MSI_LINK_ADDR(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @xlp_config_link_msi(i32, i32, i32) #1

declare dso_local i64 @cpu_is_xlp9xx(...) #1

declare dso_local i32 @PIC_9XX_IRT_PCIE_LINK_INDEX(i32) #1

declare dso_local i32 @PIC_IRT_PCIE_LINK_INDEX(i32) #1

declare dso_local i32 @nlm_setup_pic_irq(i32, i32, i32, i32) #1

declare dso_local i32 @nlm_pic_init_irt(i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @nlm_get_node(i32) #1

declare dso_local i32 @nlm_threads_per_node(...) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @irq_set_msi_desc(i32, %struct.msi_desc*) #1

declare dso_local i32 @pci_write_msi_msg(i32, %struct.msi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
