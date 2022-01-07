; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_iommu.c_tce_free_pSeriesLP.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_iommu.c_tce_free_pSeriesLP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_table = type { i64 }

@.str = private unnamed_addr constant [51 x i8] c"tce_free_pSeriesLP: plpar_tce_put failed. rc=%lld\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"\09index   = 0x%llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"\09tcenum  = 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_table*, i64, i64)* @tce_free_pSeriesLP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tce_free_pSeriesLP(%struct.iommu_table* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.iommu_table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.iommu_table* %0, %struct.iommu_table** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  br label %8

8:                                                ; preds = %38, %3
  %9 = load i64, i64* %6, align 8
  %10 = add nsw i64 %9, -1
  store i64 %10, i64* %6, align 8
  %11 = icmp ne i64 %9, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %8
  %13 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %14 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = load i64, i64* %5, align 8
  %18 = trunc i64 %17 to i32
  %19 = shl i32 %18, 12
  %20 = call i32 @plpar_tce_put(i32 %16, i32 %19, i32 0)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %12
  %24 = call i64 (...) @printk_ratelimit()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %30 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i64, i64* %5, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = call i32 (...) @dump_stack()
  br label %38

38:                                               ; preds = %26, %23, %12
  %39 = load i64, i64* %5, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %5, align 8
  br label %8

41:                                               ; preds = %8
  ret void
}

declare dso_local i32 @plpar_tce_put(i32, i32, i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
