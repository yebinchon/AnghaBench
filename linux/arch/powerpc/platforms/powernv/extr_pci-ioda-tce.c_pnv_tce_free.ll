; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda-tce.c_pnv_tce_free.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda-tce.c_pnv_tce_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_table = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pnv_tce_free(%struct.iommu_table* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.iommu_table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.iommu_table* %0, %struct.iommu_table** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %39, %3
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %10
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %17 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  %20 = load i64, i64* %7, align 8
  %21 = add nsw i64 %19, %20
  store i64 %21, i64* %8, align 8
  %22 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32* @pnv_tce(%struct.iommu_table* %22, i32 0, i64 %23, i32 0)
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %14
  %28 = call i32 @cpu_to_be64(i32 0)
  %29 = load i32*, i32** %9, align 8
  store i32 %28, i32* %29, align 4
  br label %38

30:                                               ; preds = %14
  %31 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %32 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %7, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %30, %27
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %7, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %7, align 8
  br label %10

42:                                               ; preds = %10
  ret void
}

declare dso_local i32* @pnv_tce(%struct.iommu_table*, i32, i64, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
