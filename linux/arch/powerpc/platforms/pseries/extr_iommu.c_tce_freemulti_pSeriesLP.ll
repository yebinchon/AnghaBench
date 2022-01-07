; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_iommu.c_tce_freemulti_pSeriesLP.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_iommu.c_tce_freemulti_pSeriesLP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_table = type { i64 }

@FW_FEATURE_MULTITCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"tce_freemulti_pSeriesLP: plpar_tce_stuff failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"\09rc      = %lld\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"\09index   = 0x%llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"\09npages  = 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_table*, i64, i64)* @tce_freemulti_pSeriesLP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tce_freemulti_pSeriesLP(%struct.iommu_table* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.iommu_table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.iommu_table* %0, %struct.iommu_table** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* @FW_FEATURE_MULTITCE, align 4
  %9 = call i32 @firmware_has_feature(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %6, align 8
  call void @tce_free_pSeriesLP(%struct.iommu_table* %12, i64 %13, i64 %14)
  br label %43

15:                                               ; preds = %3
  %16 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %17 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i64, i64* %5, align 8
  %21 = trunc i64 %20 to i32
  %22 = shl i32 %21, 12
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @plpar_tce_stuff(i32 %19, i32 %22, i32 0, i64 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %15
  %28 = call i64 (...) @printk_ratelimit()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %7, align 4
  %33 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %35 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load i64, i64* %6, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = call i32 (...) @dump_stack()
  br label %43

43:                                               ; preds = %11, %30, %27, %15
  ret void
}

declare dso_local i32 @firmware_has_feature(i32) #1

declare dso_local void @tce_free_pSeriesLP(%struct.iommu_table*, i64, i64) #1

declare dso_local i32 @plpar_tce_stuff(i32, i32, i32, i64) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
