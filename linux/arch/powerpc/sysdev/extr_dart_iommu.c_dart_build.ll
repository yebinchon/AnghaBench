; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_dart_iommu.c_dart_build.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_dart_iommu.c_dart_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_table = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"dart: build at: %lx, %lx, addr: %x\0A\00", align 1
@DART_PAGE_SHIFT = common dso_local global i32 0, align 4
@DARTMAP_VALID = common dso_local global i32 0, align 4
@DARTMAP_RPNMASK = common dso_local global i32 0, align 4
@DART_PAGE_SIZE = common dso_local global i64 0, align 8
@dart_is_u4 = common dso_local global i64 0, align 8
@dart_dirty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu_table*, i64, i64, i64, i32, i64)* @dart_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dart_build(%struct.iommu_table* %0, i64 %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.iommu_table*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.iommu_table* %0, %struct.iommu_table** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* %10, align 8
  %20 = call i32 @DBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %17, i64 %18, i64 %19)
  %21 = load %struct.iommu_table*, %struct.iommu_table** %7, align 8
  %22 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32* %26, i32** %13, align 8
  store i32* %26, i32** %14, align 8
  %27 = load i64, i64* %9, align 8
  store i64 %27, i64* %16, align 8
  br label %28

28:                                               ; preds = %32, %6
  %29 = load i64, i64* %16, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %16, align 8
  %31 = icmp ne i64 %29, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @__pa(i64 %33)
  %35 = load i32, i32* @DART_PAGE_SHIFT, align 4
  %36 = lshr i32 %34, %35
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* @DARTMAP_VALID, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @DARTMAP_RPNMASK, align 4
  %40 = and i32 %38, %39
  %41 = or i32 %37, %40
  %42 = load i32*, i32** %13, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %13, align 8
  store i32 %41, i32* %42, align 4
  %44 = load i64, i64* @DART_PAGE_SIZE, align 8
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %10, align 8
  br label %28

47:                                               ; preds = %28
  %48 = load i32*, i32** %14, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @dart_cache_sync(i32* %48, i64 %49)
  %51 = load i64, i64* @dart_is_u4, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %47
  %54 = load i64, i64* %8, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %15, align 4
  br label %56

56:                                               ; preds = %60, %53
  %57 = load i64, i64* %9, align 8
  %58 = add nsw i64 %57, -1
  store i64 %58, i64* %9, align 8
  %59 = icmp ne i64 %57, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* %15, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %15, align 4
  %63 = call i32 @dart_tlb_invalidate_one(i32 %61)
  br label %56

64:                                               ; preds = %56
  br label %66

65:                                               ; preds = %47
  store i32 1, i32* @dart_dirty, align 4
  br label %66

66:                                               ; preds = %65, %64
  ret i32 0
}

declare dso_local i32 @DBG(i8*, i64, i64, i64) #1

declare dso_local i32 @__pa(i64) #1

declare dso_local i32 @dart_cache_sync(i32*, i64) #1

declare dso_local i32 @dart_tlb_invalidate_one(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
