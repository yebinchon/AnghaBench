; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_iommu.c___iommu_free.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_iommu.c___iommu_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_table = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.iommu_table*, i64, i32)* }
%struct.iommu_pool = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_table*, i64, i32)* @__iommu_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__iommu_free(%struct.iommu_table* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.iommu_table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iommu_pool*, align 8
  store %struct.iommu_table* %0, %struct.iommu_table** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %13 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = lshr i64 %11, %14
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %18 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 %16, %19
  store i64 %20, i64* %8, align 8
  %21 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call %struct.iommu_pool* @get_pool(%struct.iommu_table* %21, i64 %22)
  store %struct.iommu_pool* %23, %struct.iommu_pool** %10, align 8
  %24 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @iommu_free_check(%struct.iommu_table* %24, i64 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  br label %54

30:                                               ; preds = %3
  %31 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %32 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.iommu_table*, i64, i32)*, i32 (%struct.iommu_table*, i64, i32)** %34, align 8
  %36 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 %35(%struct.iommu_table* %36, i64 %37, i32 %38)
  %40 = load %struct.iommu_pool*, %struct.iommu_pool** %10, align 8
  %41 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %40, i32 0, i32 0
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %45 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @bitmap_clear(i32 %46, i64 %47, i32 %48)
  %50 = load %struct.iommu_pool*, %struct.iommu_pool** %10, align 8
  %51 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %50, i32 0, i32 0
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  br label %54

54:                                               ; preds = %30, %29
  ret void
}

declare dso_local %struct.iommu_pool* @get_pool(%struct.iommu_table*, i64) #1

declare dso_local i32 @iommu_free_check(%struct.iommu_table*, i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bitmap_clear(i32, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
