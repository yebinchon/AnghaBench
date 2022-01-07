; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_sun4v.c_iommu_batch_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_sun4v.c_iommu_batch_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_batch = type { i64, i32* }

@iommu_batch = common dso_local global i32 0, align 4
@PGLIST_NENTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @iommu_batch_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iommu_batch_add(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.iommu_batch*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = call %struct.iommu_batch* @this_cpu_ptr(i32* @iommu_batch)
  store %struct.iommu_batch* %7, %struct.iommu_batch** %6, align 8
  %8 = load %struct.iommu_batch*, %struct.iommu_batch** %6, align 8
  %9 = getelementptr inbounds %struct.iommu_batch, %struct.iommu_batch* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PGLIST_NENTS, align 8
  %12 = icmp sge i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.iommu_batch*, %struct.iommu_batch** %6, align 8
  %17 = getelementptr inbounds %struct.iommu_batch, %struct.iommu_batch* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.iommu_batch*, %struct.iommu_batch** %6, align 8
  %20 = getelementptr inbounds %struct.iommu_batch, %struct.iommu_batch* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %20, align 8
  %23 = getelementptr inbounds i32, i32* %18, i64 %21
  store i32 %15, i32* %23, align 4
  %24 = load %struct.iommu_batch*, %struct.iommu_batch** %6, align 8
  %25 = getelementptr inbounds %struct.iommu_batch, %struct.iommu_batch* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PGLIST_NENTS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load %struct.iommu_batch*, %struct.iommu_batch** %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @iommu_batch_flush(%struct.iommu_batch* %30, i32 %31)
  store i64 %32, i64* %3, align 8
  br label %34

33:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %34

34:                                               ; preds = %33, %29
  %35 = load i64, i64* %3, align 8
  ret i64 %35
}

declare dso_local %struct.iommu_batch* @this_cpu_ptr(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @iommu_batch_flush(%struct.iommu_batch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
