; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-cxl.c_pnv_cxl_release_hwirq_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-cxl.c_pnv_cxl_release_hwirq_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_irq_ranges = type { i32*, i32* }
%struct.pci_dev = type { i32 }
%struct.pci_controller = type { %struct.pnv_phb* }
%struct.pnv_phb = type { i32, i32 }

@CXL_IRQ_RANGES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"cxl release irq range 0x%x: offset: 0x%lx  limit: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pnv_cxl_release_hwirq_ranges(%struct.cxl_irq_ranges* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.cxl_irq_ranges*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_controller*, align 8
  %6 = alloca %struct.pnv_phb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cxl_irq_ranges* %0, %struct.cxl_irq_ranges** %3, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.pci_controller* @pci_bus_to_host(i32 %11)
  store %struct.pci_controller* %12, %struct.pci_controller** %5, align 8
  %13 = load %struct.pci_controller*, %struct.pci_controller** %5, align 8
  %14 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %13, i32 0, i32 0
  %15 = load %struct.pnv_phb*, %struct.pnv_phb** %14, align 8
  store %struct.pnv_phb* %15, %struct.pnv_phb** %6, align 8
  store i32 1, i32* %7, align 4
  br label %16

16:                                               ; preds = %69, %2
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @CXL_IRQ_RANGES, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %72

20:                                               ; preds = %16
  %21 = load %struct.cxl_irq_ranges*, %struct.cxl_irq_ranges** %3, align 8
  %22 = getelementptr inbounds %struct.cxl_irq_ranges, %struct.cxl_irq_ranges* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  br label %69

30:                                               ; preds = %20
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.cxl_irq_ranges*, %struct.cxl_irq_ranges** %3, align 8
  %33 = getelementptr inbounds %struct.cxl_irq_ranges, %struct.cxl_irq_ranges* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cxl_irq_ranges*, %struct.cxl_irq_ranges** %3, align 8
  %40 = getelementptr inbounds %struct.cxl_irq_ranges, %struct.cxl_irq_ranges* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pr_devel(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %38, i32 %45)
  %47 = load %struct.cxl_irq_ranges*, %struct.cxl_irq_ranges** %3, align 8
  %48 = getelementptr inbounds %struct.cxl_irq_ranges, %struct.cxl_irq_ranges* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.pnv_phb*, %struct.pnv_phb** %6, align 8
  %55 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %53, %56
  store i32 %57, i32* %8, align 4
  %58 = load %struct.pnv_phb*, %struct.pnv_phb** %6, align 8
  %59 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %58, i32 0, i32 1
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.cxl_irq_ranges*, %struct.cxl_irq_ranges** %3, align 8
  %62 = getelementptr inbounds %struct.cxl_irq_ranges, %struct.cxl_irq_ranges* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @msi_bitmap_free_hwirqs(i32* %59, i32 %60, i32 %67)
  br label %69

69:                                               ; preds = %30, %29
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %16

72:                                               ; preds = %16
  ret void
}

declare dso_local %struct.pci_controller* @pci_bus_to_host(i32) #1

declare dso_local i32 @pr_devel(i8*, i32, i32, i32) #1

declare dso_local i32 @msi_bitmap_free_hwirqs(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
