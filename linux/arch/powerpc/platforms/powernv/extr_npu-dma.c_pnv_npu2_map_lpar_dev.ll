; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_npu-dma.c_pnv_npu2_map_lpar_dev.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_npu-dma.c_pnv_npu2_map_lpar_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_controller = type { %struct.pnv_phb* }
%struct.pnv_phb = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Map LPAR opalid=%llu lparid=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Error %d mapping device to LPAR\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"init context opalid=%llu msr=%lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to init context: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnv_npu2_map_lpar_dev(%struct.pci_dev* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca %struct.pci_controller*, align 8
  %11 = alloca %struct.pnv_phb*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %13 = call %struct.pci_dev* @pnv_pci_get_npu_dev(%struct.pci_dev* %12, i32 0)
  store %struct.pci_dev* %13, %struct.pci_dev** %9, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %15 = icmp ne %struct.pci_dev* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %74

19:                                               ; preds = %3
  %20 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.pci_controller* @pci_bus_to_host(i32 %22)
  store %struct.pci_controller* %23, %struct.pci_controller** %10, align 8
  %24 = load %struct.pci_controller*, %struct.pci_controller** %10, align 8
  %25 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %24, i32 0, i32 0
  %26 = load %struct.pnv_phb*, %struct.pnv_phb** %25, align 8
  store %struct.pnv_phb* %26, %struct.pnv_phb** %11, align 8
  %27 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = load %struct.pnv_phb*, %struct.pnv_phb** %11, align 8
  %30 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = call i32 @dev_dbg(i32* %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %31, i64 %33)
  %35 = load %struct.pnv_phb*, %struct.pnv_phb** %11, align 8
  %36 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %39 = call i32 @pci_dev_id(%struct.pci_dev* %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @opal_npu_map_lpar(i32 %37, i32 %39, i32 %40, i32 0)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %19
  %45 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %74

50:                                               ; preds = %19
  %51 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 0
  %53 = load %struct.pnv_phb*, %struct.pnv_phb** %11, align 8
  %54 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @dev_dbg(i32* %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %55, i64 %56)
  %58 = load %struct.pnv_phb*, %struct.pnv_phb** %11, align 8
  %59 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %63 = call i32 @pci_dev_id(%struct.pci_dev* %62)
  %64 = call i32 @opal_npu_init_context(i32 %60, i32 0, i64 %61, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %50
  %68 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  br label %73

72:                                               ; preds = %50
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %72, %67
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %44, %16
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.pci_dev* @pnv_pci_get_npu_dev(%struct.pci_dev*, i32) #1

declare dso_local %struct.pci_controller* @pci_bus_to_host(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i64) #1

declare dso_local i32 @opal_npu_map_lpar(i32, i32, i32, i32) #1

declare dso_local i32 @pci_dev_id(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @opal_npu_init_context(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
