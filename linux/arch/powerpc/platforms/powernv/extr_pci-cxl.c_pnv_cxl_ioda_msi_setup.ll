; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-cxl.c_pnv_cxl_ioda_msi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-cxl.c_pnv_cxl_ioda_msi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_controller = type { %struct.pnv_phb* }
%struct.pnv_phb = type { i32, i32 }
%struct.pnv_ioda_pe = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"%s: OPAL error %d setting msi_base 0x%x hwirq 0x%x XIVE 0x%x PE\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnv_cxl_ioda_msi_setup(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_controller*, align 8
  %9 = alloca %struct.pnv_phb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pnv_ioda_pe*, align 8
  %12 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.pci_controller* @pci_bus_to_host(i32 %15)
  store %struct.pci_controller* %16, %struct.pci_controller** %8, align 8
  %17 = load %struct.pci_controller*, %struct.pci_controller** %8, align 8
  %18 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %17, i32 0, i32 0
  %19 = load %struct.pnv_phb*, %struct.pnv_phb** %18, align 8
  store %struct.pnv_phb* %19, %struct.pnv_phb** %9, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.pnv_phb*, %struct.pnv_phb** %9, align 8
  %22 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub i32 %20, %23
  store i32 %24, i32* %10, align 4
  %25 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %26 = call %struct.pnv_ioda_pe* @pnv_ioda_get_pe(%struct.pci_dev* %25)
  store %struct.pnv_ioda_pe* %26, %struct.pnv_ioda_pe** %11, align 8
  %27 = icmp ne %struct.pnv_ioda_pe* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %59

31:                                               ; preds = %3
  %32 = load %struct.pnv_phb*, %struct.pnv_phb** %9, align 8
  %33 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %11, align 8
  %36 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @opal_pci_set_xive_pe(i32 %34, i32 %37, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %31
  %43 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %11, align 8
  %44 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %45 = call i32 @pci_name(%struct.pci_dev* %44)
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.pnv_phb*, %struct.pnv_phb** %9, align 8
  %48 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @pe_warn(%struct.pnv_ioda_pe* %43, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46, i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %59

55:                                               ; preds = %31
  %56 = load %struct.pnv_phb*, %struct.pnv_phb** %9, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @pnv_set_msi_irq_chip(%struct.pnv_phb* %56, i32 %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %55, %42, %28
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.pci_controller* @pci_bus_to_host(i32) #1

declare dso_local %struct.pnv_ioda_pe* @pnv_ioda_get_pe(%struct.pci_dev*) #1

declare dso_local i32 @opal_pci_set_xive_pe(i32, i32, i32) #1

declare dso_local i32 @pe_warn(%struct.pnv_ioda_pe*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @pnv_set_msi_irq_chip(%struct.pnv_phb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
