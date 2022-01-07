; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_npu-dma.c_pnv_npu2_unmap_lpar_dev.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_npu-dma.c_pnv_npu2_unmap_lpar_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_controller = type { %struct.pnv_phb* }
%struct.pnv_phb = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"destroy context opalid=%llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to destroy context: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Map LPAR opalid=%llu lparid=0\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Error %d mapping device to LPAR\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnv_npu2_unmap_lpar_dev(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.pci_controller*, align 8
  %7 = alloca %struct.pnv_phb*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = call %struct.pci_dev* @pnv_pci_get_npu_dev(%struct.pci_dev* %8, i32 0)
  store %struct.pci_dev* %9, %struct.pci_dev** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = icmp ne %struct.pci_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %65

15:                                               ; preds = %1
  %16 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.pci_controller* @pci_bus_to_host(i32 %18)
  store %struct.pci_controller* %19, %struct.pci_controller** %6, align 8
  %20 = load %struct.pci_controller*, %struct.pci_controller** %6, align 8
  %21 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %20, i32 0, i32 0
  %22 = load %struct.pnv_phb*, %struct.pnv_phb** %21, align 8
  store %struct.pnv_phb* %22, %struct.pnv_phb** %7, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = load %struct.pnv_phb*, %struct.pnv_phb** %7, align 8
  %26 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_dbg(i32* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.pnv_phb*, %struct.pnv_phb** %7, align 8
  %30 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %33 = call i32 @pci_dev_id(%struct.pci_dev* %32)
  %34 = call i32 @opal_npu_destroy_context(i32 %31, i32 0, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %15
  %38 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %65

43:                                               ; preds = %15
  %44 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = load %struct.pnv_phb*, %struct.pnv_phb** %7, align 8
  %47 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_dbg(i32* %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load %struct.pnv_phb*, %struct.pnv_phb** %7, align 8
  %51 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %54 = call i32 @pci_dev_id(%struct.pci_dev* %53)
  %55 = call i32 @opal_npu_map_lpar(i32 %52, i32 %54, i32 0, i32 0)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %43
  %59 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %58, %43
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %37, %12
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.pci_dev* @pnv_pci_get_npu_dev(%struct.pci_dev*, i32) #1

declare dso_local %struct.pci_controller* @pci_bus_to_host(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @opal_npu_destroy_context(i32, i32, i32) #1

declare dso_local i32 @pci_dev_id(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @opal_npu_map_lpar(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
