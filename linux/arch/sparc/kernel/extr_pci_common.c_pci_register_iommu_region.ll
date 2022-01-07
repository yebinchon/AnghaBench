; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_common.c_pci_register_iommu_region.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_common.c_pci_register_iommu_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.resource = type { i8*, i32, i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"virtual-dma\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: Cannot allocate IOMMU resource.\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"IOMMU\00", align 1
@IORESOURCE_BUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"%s: Unable to request IOMMU resource.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_pbm_info*)* @pci_register_iommu_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_register_iommu_region(%struct.pci_pbm_info* %0) #0 {
  %2 = alloca %struct.pci_pbm_info*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca %struct.resource*, align 8
  store %struct.pci_pbm_info* %0, %struct.pci_pbm_info** %2, align 8
  %5 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %6 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %5, i32 0, i32 2
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64* @of_get_property(i32 %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null)
  store i64* %11, i64** %3, align 8
  %12 = load i64*, i64** %3, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %14, label %63

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.resource* @kzalloc(i32 32, i32 %15)
  store %struct.resource* %16, %struct.resource** %4, align 8
  %17 = load %struct.resource*, %struct.resource** %4, align 8
  %18 = icmp ne %struct.resource* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %21 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %63

24:                                               ; preds = %14
  %25 = load %struct.resource*, %struct.resource** %4, align 8
  %26 = getelementptr inbounds %struct.resource, %struct.resource* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %26, align 8
  %27 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %28 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %3, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %30, %33
  %35 = load %struct.resource*, %struct.resource** %4, align 8
  %36 = getelementptr inbounds %struct.resource, %struct.resource* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = load %struct.resource*, %struct.resource** %4, align 8
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %3, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %39, %42
  %44 = sub i64 %43, 1
  %45 = load %struct.resource*, %struct.resource** %4, align 8
  %46 = getelementptr inbounds %struct.resource, %struct.resource* %45, i32 0, i32 3
  store i64 %44, i64* %46, align 8
  %47 = load i32, i32* @IORESOURCE_BUSY, align 4
  %48 = load %struct.resource*, %struct.resource** %4, align 8
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %51 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %50, i32 0, i32 1
  %52 = load %struct.resource*, %struct.resource** %4, align 8
  %53 = call i64 @request_resource(%struct.TYPE_6__* %51, %struct.resource* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %24
  %56 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %57 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load %struct.resource*, %struct.resource** %4, align 8
  %61 = call i32 @kfree(%struct.resource* %60)
  br label %62

62:                                               ; preds = %55, %24
  br label %63

63:                                               ; preds = %19, %62, %1
  ret void
}

declare dso_local i64* @of_get_property(i32, i8*, i32*) #1

declare dso_local %struct.resource* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i64 @request_resource(%struct.TYPE_6__*, %struct.resource*) #1

declare dso_local i32 @kfree(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
