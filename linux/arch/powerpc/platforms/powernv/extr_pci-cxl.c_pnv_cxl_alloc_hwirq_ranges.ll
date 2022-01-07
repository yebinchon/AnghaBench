; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-cxl.c_pnv_cxl_alloc_hwirq_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-cxl.c_pnv_cxl_alloc_hwirq_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_irq_ranges = type { i32*, i64* }
%struct.pci_dev = type { i32 }
%struct.pci_controller = type { %struct.pnv_phb* }
%struct.pnv_phb = type { i64, i32 }

@CXL_IRQ_RANGES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"cxl alloc irq range 0x%x: offset: 0x%lx  limit: %li\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnv_cxl_alloc_hwirq_ranges(%struct.cxl_irq_ranges* %0, %struct.pci_dev* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxl_irq_ranges*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_controller*, align 8
  %9 = alloca %struct.pnv_phb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cxl_irq_ranges* %0, %struct.cxl_irq_ranges** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.pci_controller* @pci_bus_to_host(i32 %15)
  store %struct.pci_controller* %16, %struct.pci_controller** %8, align 8
  %17 = load %struct.pci_controller*, %struct.pci_controller** %8, align 8
  %18 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %17, i32 0, i32 0
  %19 = load %struct.pnv_phb*, %struct.pnv_phb** %18, align 8
  store %struct.pnv_phb* %19, %struct.pnv_phb** %9, align 8
  %20 = load %struct.cxl_irq_ranges*, %struct.cxl_irq_ranges** %5, align 8
  %21 = call i32 @memset(%struct.cxl_irq_ranges* %20, i32 0, i32 16)
  store i32 1, i32* %10, align 4
  br label %22

22:                                               ; preds = %90, %3
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @CXL_IRQ_RANGES, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i1 [ false, %22 ], [ %28, %26 ]
  br i1 %30, label %31, label %93

31:                                               ; preds = %29
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %44, %31
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load %struct.pnv_phb*, %struct.pnv_phb** %9, align 8
  %38 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %37, i32 0, i32 1
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @msi_bitmap_alloc_hwirqs(i32* %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %47

44:                                               ; preds = %36
  %45 = load i32, i32* %12, align 4
  %46 = sdiv i32 %45, 2
  store i32 %46, i32* %12, align 4
  br label %33

47:                                               ; preds = %43, %33
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  br label %98

51:                                               ; preds = %47
  %52 = load %struct.pnv_phb*, %struct.pnv_phb** %9, align 8
  %53 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = load %struct.cxl_irq_ranges*, %struct.cxl_irq_ranges** %5, align 8
  %59 = getelementptr inbounds %struct.cxl_irq_ranges, %struct.cxl_irq_ranges* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  store i64 %57, i64* %63, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.cxl_irq_ranges*, %struct.cxl_irq_ranges** %5, align 8
  %66 = getelementptr inbounds %struct.cxl_irq_ranges, %struct.cxl_irq_ranges* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %64, i32* %70, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.cxl_irq_ranges*, %struct.cxl_irq_ranges** %5, align 8
  %73 = getelementptr inbounds %struct.cxl_irq_ranges, %struct.cxl_irq_ranges* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.cxl_irq_ranges*, %struct.cxl_irq_ranges** %5, align 8
  %80 = getelementptr inbounds %struct.cxl_irq_ranges, %struct.cxl_irq_ranges* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @pr_devel(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %71, i64 %78, i32 %85)
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %7, align 4
  %89 = sub nsw i32 %88, %87
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %51
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %22

93:                                               ; preds = %29
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %98

97:                                               ; preds = %93
  store i32 0, i32* %4, align 4
  br label %104

98:                                               ; preds = %96, %50
  %99 = load %struct.cxl_irq_ranges*, %struct.cxl_irq_ranges** %5, align 8
  %100 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %101 = call i32 @pnv_cxl_release_hwirq_ranges(%struct.cxl_irq_ranges* %99, %struct.pci_dev* %100)
  %102 = load i32, i32* @ENOSPC, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %98, %97
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.pci_controller* @pci_bus_to_host(i32) #1

declare dso_local i32 @memset(%struct.cxl_irq_ranges*, i32, i32) #1

declare dso_local i32 @msi_bitmap_alloc_hwirqs(i32*, i32) #1

declare dso_local i32 @pr_devel(i8*, i32, i64, i32) #1

declare dso_local i32 @pnv_cxl_release_hwirq_ranges(%struct.cxl_irq_ranges*, %struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
