; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_pgalloc.c_base_region3_walk.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_pgalloc.c_base_region3_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_REGION3_INDEX = common dso_local global i64 0, align 8
@_REGION3_SHIFT = common dso_local global i64 0, align 8
@_REGION_ENTRY_INVALID = common dso_local global i64 0, align 8
@_SEGMENT_ENTRY_EMPTY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@_REGION3_ENTRY = common dso_local global i64 0, align 8
@_REGION_ENTRY_ORIGIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i32)* @base_region3_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @base_region3_walk(i64 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i64, i64* %6, align 8
  %15 = inttoptr i64 %14 to i64*
  store i64* %15, i64** %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @_REGION3_INDEX, align 8
  %18 = and i64 %16, %17
  %19 = load i64, i64* @_REGION3_SHIFT, align 8
  %20 = lshr i64 %18, %19
  %21 = load i64*, i64** %10, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 %20
  store i64* %22, i64** %10, align 8
  br label %23

23:                                               ; preds = %70, %4
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @base_region3_addr_end(i64 %24, i64 %25)
  store i64 %26, i64* %11, align 8
  %27 = load i64*, i64** %10, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @_REGION_ENTRY_INVALID, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %23
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  br label %70

36:                                               ; preds = %32
  %37 = load i32, i32* @_SEGMENT_ENTRY_EMPTY, align 4
  %38 = call i64 @base_crst_alloc(i32 %37)
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %78

44:                                               ; preds = %36
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* @_REGION3_ENTRY, align 8
  %47 = or i64 %45, %46
  %48 = load i64*, i64** %10, align 8
  store i64 %47, i64* %48, align 8
  br label %49

49:                                               ; preds = %44, %23
  %50 = load i64*, i64** %10, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @_REGION_ENTRY_ORIGIN, align 8
  %53 = and i64 %51, %52
  store i64 %53, i64* %12, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @base_segment_walk(i64 %54, i64 %55, i64 %56, i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %5, align 4
  br label %78

63:                                               ; preds = %49
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i64, i64* %12, align 8
  %68 = call i32 @base_crst_free(i64 %67)
  br label %69

69:                                               ; preds = %66, %63
  br label %70

70:                                               ; preds = %69, %35
  %71 = load i64*, i64** %10, align 8
  %72 = getelementptr inbounds i64, i64* %71, i32 1
  store i64* %72, i64** %10, align 8
  %73 = load i64, i64* %11, align 8
  store i64 %73, i64* %7, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %23, label %77

77:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %61, %41
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i64 @base_region3_addr_end(i64, i64) #1

declare dso_local i64 @base_crst_alloc(i32) #1

declare dso_local i32 @base_segment_walk(i64, i64, i64, i32) #1

declare dso_local i32 @base_crst_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
