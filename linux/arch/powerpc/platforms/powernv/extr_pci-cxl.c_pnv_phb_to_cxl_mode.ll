; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-cxl.c_pnv_phb_to_cxl_mode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-cxl.c_pnv_phb_to_cxl_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_controller = type { %struct.pnv_phb* }
%struct.pnv_phb = type { i32 }
%struct.pnv_ioda_pe = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Switching PHB to CXL\0A\00", align 1
@OPAL_UNSUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Required cxl mode not supported by firmware - update skiboot\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"opal_pci_set_phb_cxl_mode failed: %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnv_phb_to_cxl_mode(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_controller*, align 8
  %7 = alloca %struct.pnv_phb*, align 8
  %8 = alloca %struct.pnv_ioda_pe*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.pci_controller* @pci_bus_to_host(i32 %12)
  store %struct.pci_controller* %13, %struct.pci_controller** %6, align 8
  %14 = load %struct.pci_controller*, %struct.pci_controller** %6, align 8
  %15 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %14, i32 0, i32 0
  %16 = load %struct.pnv_phb*, %struct.pnv_phb** %15, align 8
  store %struct.pnv_phb* %16, %struct.pnv_phb** %7, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = call %struct.pnv_ioda_pe* @pnv_ioda_get_pe(%struct.pci_dev* %17)
  store %struct.pnv_ioda_pe* %18, %struct.pnv_ioda_pe** %8, align 8
  %19 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %8, align 8
  %20 = icmp ne %struct.pnv_ioda_pe* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %53

24:                                               ; preds = %2
  %25 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %8, align 8
  %26 = call i32 @pe_info(%struct.pnv_ioda_pe* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.pnv_phb*, %struct.pnv_phb** %7, align 8
  %28 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.pnv_ioda_pe*, %struct.pnv_ioda_pe** %8, align 8
  %32 = getelementptr inbounds %struct.pnv_ioda_pe, %struct.pnv_ioda_pe* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @opal_pci_set_phb_cxl_mode(i32 %29, i32 %30, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @OPAL_UNSUPPORTED, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %24
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = call i32 (i32*, i8*, ...) @dev_err(i32* %40, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  br label %51

42:                                               ; preds = %24
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %9, align 4
  %49 = call i32 (i32*, i8*, ...) @dev_err(i32* %47, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %45, %42
  br label %51

51:                                               ; preds = %50, %38
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %21
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.pci_controller* @pci_bus_to_host(i32) #1

declare dso_local %struct.pnv_ioda_pe* @pnv_ioda_get_pe(%struct.pci_dev*) #1

declare dso_local i32 @pe_info(%struct.pnv_ioda_pe*, i8*) #1

declare dso_local i32 @opal_pci_set_phb_cxl_mode(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
