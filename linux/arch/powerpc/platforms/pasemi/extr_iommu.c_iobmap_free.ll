; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pasemi/extr_iommu.c_iobmap_free.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pasemi/extr_iommu.c_iobmap_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_table = type { i64, i64 }

@.str = private unnamed_addr constant [27 x i8] c"iobmap: free at: %lx, %lx\0A\00", align 1
@IOBMAP_PAGE_SHIFT = common dso_local global i64 0, align 8
@iob_l2_emptyval = common dso_local global i32 0, align 4
@iob = common dso_local global i64 0, align 8
@IOB_AT_INVAL_TLB_REG = common dso_local global i64 0, align 8
@IOBMAP_PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_table*, i64, i64)* @iobmap_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iobmap_free(%struct.iommu_table* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.iommu_table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.iommu_table* %0, %struct.iommu_table** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %9, i64 %10)
  %12 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %13 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i64, i64* @IOBMAP_PAGE_SHIFT, align 8
  %18 = shl i64 %16, %17
  store i64 %18, i64* %8, align 8
  %19 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %20 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32* %24, i32** %7, align 8
  br label %25

25:                                               ; preds = %29, %3
  %26 = load i64, i64* %6, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %6, align 8
  %28 = icmp ne i64 %26, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load i32, i32* @iob_l2_emptyval, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  %33 = load i64, i64* @iob, align 8
  %34 = load i64, i64* @IOB_AT_INVAL_TLB_REG, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i64, i64* %8, align 8
  %37 = lshr i64 %36, 14
  %38 = call i32 @out_le32(i64 %35, i64 %37)
  %39 = load i64, i64* @IOBMAP_PAGE_SIZE, align 8
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %8, align 8
  br label %25

42:                                               ; preds = %25
  ret void
}

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local i32 @out_le32(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
