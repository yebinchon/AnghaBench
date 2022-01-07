; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_iommu.c_iommu_table_reserve_pages.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_iommu.c_iommu_table_reserve_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_table = type { i64, i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_table*, i64, i64)* @iommu_table_reserve_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_table_reserve_pages(%struct.iommu_table* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.iommu_table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.iommu_table* %0, %struct.iommu_table** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ult i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON_ONCE(i32 %11)
  %13 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %14 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %19 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @set_bit(i64 0, i32 %20)
  br label %22

22:                                               ; preds = %17, %3
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %25 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %28 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %22
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %31
  %35 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %36 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %39 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %37, %41
  %43 = load i64, i64* %5, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %34
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %48 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %34
  br label %78

52:                                               ; preds = %45, %31, %22
  %53 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %54 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %75, %52
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %61 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ult i64 %59, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %57
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %68 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %66, %69
  %71 = load %struct.iommu_table*, %struct.iommu_table** %4, align 8
  %72 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @set_bit(i64 %70, i32 %73)
  br label %75

75:                                               ; preds = %64
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %57

78:                                               ; preds = %51, %57
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @set_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
