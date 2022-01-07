; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_ocxl.c_pnv_ocxl_spa_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_ocxl.c_pnv_ocxl_spa_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_controller = type { %struct.pnv_phb* }
%struct.pnv_phb = type { i32 }
%struct.spa_data = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Can't setup Shared Process Area: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnv_ocxl_spa_setup(%struct.pci_dev* %0, i8* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.pci_controller*, align 8
  %11 = alloca %struct.pnv_phb*, align 8
  %12 = alloca %struct.spa_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = call %struct.pci_controller* @pci_bus_to_host(%struct.TYPE_2__* %17)
  store %struct.pci_controller* %18, %struct.pci_controller** %10, align 8
  %19 = load %struct.pci_controller*, %struct.pci_controller** %10, align 8
  %20 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %19, i32 0, i32 0
  %21 = load %struct.pnv_phb*, %struct.pnv_phb** %20, align 8
  store %struct.pnv_phb* %21, %struct.pnv_phb** %11, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.spa_data* @kzalloc(i32 8, i32 %22)
  store %struct.spa_data* %23, %struct.spa_data** %12, align 8
  %24 = load %struct.spa_data*, %struct.spa_data** %12, align 8
  %25 = icmp ne %struct.spa_data* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %70

29:                                               ; preds = %4
  %30 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 8
  %36 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %35, %38
  store i32 %39, i32* %13, align 4
  %40 = load %struct.pnv_phb*, %struct.pnv_phb** %11, align 8
  %41 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @virt_to_phys(i8* %44)
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @opal_npu_spa_setup(i32 %42, i32 %43, i32 %45, i32 %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %29
  %51 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 1
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.spa_data*, %struct.spa_data** %12, align 8
  %56 = call i32 @kfree(%struct.spa_data* %55)
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %5, align 4
  br label %70

58:                                               ; preds = %29
  %59 = load %struct.pnv_phb*, %struct.pnv_phb** %11, align 8
  %60 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.spa_data*, %struct.spa_data** %12, align 8
  %63 = getelementptr inbounds %struct.spa_data, %struct.spa_data* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load %struct.spa_data*, %struct.spa_data** %12, align 8
  %66 = getelementptr inbounds %struct.spa_data, %struct.spa_data* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.spa_data*, %struct.spa_data** %12, align 8
  %68 = bitcast %struct.spa_data* %67 to i8*
  %69 = load i8**, i8*** %9, align 8
  store i8* %68, i8** %69, align 8
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %58, %50, %26
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local %struct.pci_controller* @pci_bus_to_host(%struct.TYPE_2__*) #1

declare dso_local %struct.spa_data* @kzalloc(i32, i32) #1

declare dso_local i32 @opal_npu_spa_setup(i32, i32, i32, i32) #1

declare dso_local i32 @virt_to_phys(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.spa_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
