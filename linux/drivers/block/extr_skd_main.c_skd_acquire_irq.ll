; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_acquire_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_acquire_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { %struct.pci_dev*, i32, i32 }
%struct.pci_dev = type { i32, i64, i32 }

@PCI_IRQ_LEGACY = common dso_local global i32 0, align 4
@skd_isr_type = common dso_local global i64 0, align 8
@SKD_IRQ_MSIX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"failed to enable MSI-X, re-trying with MSI %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@DRV_NAME = common dso_local global i8* null, align 8
@SKD_IRQ_LEGACY = common dso_local global i64 0, align 8
@PCI_IRQ_MSI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"failed to allocate the MSI interrupt %d\0A\00", align 1
@skd_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to allocate interrupt %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skd_device*)* @skd_acquire_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skd_acquire_irq(%struct.skd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skd_device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.skd_device* %0, %struct.skd_device** %3, align 8
  %7 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %8 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %7, i32 0, i32 0
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load i32, i32* @PCI_IRQ_LEGACY, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i64, i64* @skd_isr_type, align 8
  %12 = load i64, i64* @SKD_IRQ_MSIX, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %16 = call i32 @skd_acquire_msix(%struct.skd_device* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %91

20:                                               ; preds = %14
  %21 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %22 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %21, i32 0, i32 0
  %23 = load %struct.pci_dev*, %struct.pci_dev** %22, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %20, %1
  %28 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %29 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** @DRV_NAME, align 8
  %32 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %33 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @snprintf(i32 %30, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %31, i32 %34)
  %36 = load i64, i64* @skd_isr_type, align 8
  %37 = load i64, i64* @SKD_IRQ_LEGACY, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %27
  %40 = load i32, i32* @PCI_IRQ_MSI, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %39, %27
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %44, i32 1, i32 1, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %51 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %50, i32 0, i32 0
  %52 = load %struct.pci_dev*, %struct.pci_dev** %51, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %91

57:                                               ; preds = %43
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 0
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @skd_isr, align 4
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  br label %71

69:                                               ; preds = %57
  %70 = load i32, i32* @IRQF_SHARED, align 4
  br label %71

71:                                               ; preds = %69, %68
  %72 = phi i32 [ 0, %68 ], [ %70, %69 ]
  %73 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %74 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %77 = call i32 @devm_request_irq(i32* %59, i32 %62, i32 %63, i32 %72, i32 %75, %struct.skd_device* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %71
  %81 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %82 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %81)
  %83 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %84 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %83, i32 0, i32 0
  %85 = load %struct.pci_dev*, %struct.pci_dev** %84, align 8
  %86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @dev_err(i32* %86, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %2, align 4
  br label %91

90:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %80, %49, %19
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @skd_acquire_msix(%struct.skd_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @pci_alloc_irq_vectors(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.skd_device*) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
