; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_msi-xlp.c_xlp_setup_msix.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_msi-xlp.c_xlp_setup_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_desc = type { i32 }
%struct.xlp_msi_data = type { i32, i32 }
%struct.msi_msg = type { i32, i32, i32 }

@XLP_MSIXVEC_PER_LINK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.msi_desc*)* @xlp_setup_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlp_setup_msix(i32 %0, i32 %1, i32 %2, %struct.msi_desc* %3) #0 {
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
  %20 = call i32 @PIC_PCIE_MSIX_IRQ(i32 %19)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @nlm_link_msixirq(i32 %22, i32 0)
  %24 = call i32 @nlm_irq_to_xirq(i32 %21, i32 %23)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = call %struct.xlp_msi_data* @irq_get_chip_data(i32 %25)
  store %struct.xlp_msi_data* %26, %struct.xlp_msi_data** %10, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @MSIX_LINK_ADDR(i32 %27, i32 %28)
  store i32 %29, i32* %18, align 4
  %30 = load %struct.xlp_msi_data*, %struct.xlp_msi_data** %10, align 8
  %31 = getelementptr inbounds %struct.xlp_msi_data, %struct.xlp_msi_data* %30, i32 0, i32 1
  %32 = load i64, i64* %12, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.xlp_msi_data*, %struct.xlp_msi_data** %10, align 8
  %35 = getelementptr inbounds %struct.xlp_msi_data, %struct.xlp_msi_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %18, align 4
  %42 = call i32 @xlp_config_link_msix(i32 %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %4
  %44 = load %struct.xlp_msi_data*, %struct.xlp_msi_data** %10, align 8
  %45 = getelementptr inbounds %struct.xlp_msi_data, %struct.xlp_msi_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @fls(i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @XLP_MSIXVEC_PER_LINK, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %43
  %52 = load %struct.xlp_msi_data*, %struct.xlp_msi_data** %10, align 8
  %53 = getelementptr inbounds %struct.xlp_msi_data, %struct.xlp_msi_data* %52, i32 0, i32 1
  %54 = load i64, i64* %12, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %92

58:                                               ; preds = %43
  %59 = load i32, i32* %13, align 4
  %60 = shl i32 1, %59
  %61 = load %struct.xlp_msi_data*, %struct.xlp_msi_data** %10, align 8
  %62 = getelementptr inbounds %struct.xlp_msi_data, %struct.xlp_msi_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.xlp_msi_data*, %struct.xlp_msi_data** %10, align 8
  %66 = getelementptr inbounds %struct.xlp_msi_data, %struct.xlp_msi_data* %65, i32 0, i32 1
  %67 = load i64, i64* %12, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %16, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = call i32 @nlm_irq_msixvec(i32 %72)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %18, align 4
  %75 = ashr i32 %74, 32
  %76 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %11, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %18, align 4
  %78 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %11, i32 0, i32 1
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* %14, align 4
  %80 = or i32 3072, %79
  %81 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %11, i32 0, i32 2
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load %struct.msi_desc*, %struct.msi_desc** %9, align 8
  %84 = call i32 @irq_set_msi_desc(i32 %82, %struct.msi_desc* %83)
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %17, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %58
  %88 = load i32, i32* %17, align 4
  store i32 %88, i32* %5, align 4
  br label %92

89:                                               ; preds = %58
  %90 = load i32, i32* %16, align 4
  %91 = call i32 @pci_write_msi_msg(i32 %90, %struct.msi_msg* %11)
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %89, %87, %51
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @PIC_PCIE_MSIX_IRQ(i32) #1

declare dso_local i32 @nlm_irq_to_xirq(i32, i32) #1

declare dso_local i32 @nlm_link_msixirq(i32, i32) #1

declare dso_local %struct.xlp_msi_data* @irq_get_chip_data(i32) #1

declare dso_local i32 @MSIX_LINK_ADDR(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @xlp_config_link_msix(i32, i32, i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nlm_irq_msixvec(i32) #1

declare dso_local i32 @irq_set_msi_desc(i32, %struct.msi_desc*) #1

declare dso_local i32 @pci_write_msi_msg(i32, %struct.msi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
