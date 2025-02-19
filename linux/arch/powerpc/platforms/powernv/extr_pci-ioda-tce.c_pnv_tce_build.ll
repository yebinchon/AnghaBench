; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda-tce.c_pnv_tce_build.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda-tce.c_pnv_tce_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_table = type { i32, i64 }

@TCE_PCI_WRITE = common dso_local global i32 0, align 4
@TCE_PCI_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnv_tce_build(%struct.iommu_table* %0, i64 %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.iommu_table*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.iommu_table* %0, %struct.iommu_table** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @iommu_direction_to_tce_perm(i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @__pa(i64 %20)
  %22 = load %struct.iommu_table*, %struct.iommu_table** %7, align 8
  %23 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = ashr i32 %21, %24
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @TCE_PCI_WRITE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %6
  %31 = load i32, i32* @TCE_PCI_READ, align 4
  %32 = load i32, i32* %13, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %30, %6
  store i64 0, i64* %15, align 8
  br label %35

35:                                               ; preds = %64, %34
  %36 = load i64, i64* %15, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %67

39:                                               ; preds = %35
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %15, align 8
  %45 = add nsw i64 %43, %44
  %46 = load %struct.iommu_table*, %struct.iommu_table** %7, align 8
  %47 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = zext i32 %48 to i64
  %50 = shl i64 %45, %49
  %51 = or i64 %41, %50
  store i64 %51, i64* %16, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.iommu_table*, %struct.iommu_table** %7, align 8
  %54 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = load i64, i64* %15, align 8
  %58 = add nsw i64 %56, %57
  store i64 %58, i64* %17, align 8
  %59 = load i64, i64* %16, align 8
  %60 = call i32 @cpu_to_be64(i64 %59)
  %61 = load %struct.iommu_table*, %struct.iommu_table** %7, align 8
  %62 = load i64, i64* %17, align 8
  %63 = call i32* @pnv_tce(%struct.iommu_table* %61, i32 0, i64 %62, i32 1)
  store i32 %60, i32* %63, align 4
  br label %64

64:                                               ; preds = %39
  %65 = load i64, i64* %15, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %15, align 8
  br label %35

67:                                               ; preds = %35
  ret i32 0
}

declare dso_local i32 @iommu_direction_to_tce_perm(i32) #1

declare dso_local i32 @__pa(i64) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32* @pnv_tce(%struct.iommu_table*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
