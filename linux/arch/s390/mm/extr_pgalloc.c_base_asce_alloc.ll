; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_pgalloc.c_base_asce_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_pgalloc.c_base_asce_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8
@_REGION3_SIZE = common dso_local global i64 0, align 8
@_SEGMENT_ENTRY_EMPTY = common dso_local global i32 0, align 4
@_ASCE_TYPE_SEGMENT = common dso_local global i64 0, align 8
@_ASCE_TABLE_LENGTH = common dso_local global i64 0, align 8
@_REGION2_SIZE = common dso_local global i64 0, align 8
@_REGION3_ENTRY_EMPTY = common dso_local global i32 0, align 4
@_ASCE_TYPE_REGION3 = common dso_local global i64 0, align 8
@_REGION1_SIZE = common dso_local global i64 0, align 8
@_REGION2_ENTRY_EMPTY = common dso_local global i32 0, align 4
@_ASCE_TYPE_REGION2 = common dso_local global i64 0, align 8
@_REGION1_ENTRY_EMPTY = common dso_local global i32 0, align 4
@_ASCE_TYPE_REGION1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @base_asce_alloc(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = call i64 (...) @base_pgt_cache_init()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %104

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @PAGE_SIZE, align 8
  %17 = mul i64 %15, %16
  %18 = add i64 %14, %17
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @_REGION3_SIZE, align 8
  %21 = icmp ule i64 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %13
  %23 = load i32, i32* @_SEGMENT_ENTRY_EMPTY, align 4
  %24 = call i64 @base_crst_alloc(i32 %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i64 0, i64* %3, align 8
  br label %104

28:                                               ; preds = %22
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @base_segment_walk(i64 %29, i64 %30, i64 %31, i32 1)
  store i32 %32, i32* %9, align 4
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @_ASCE_TYPE_SEGMENT, align 8
  %35 = or i64 %33, %34
  %36 = load i64, i64* @_ASCE_TABLE_LENGTH, align 8
  %37 = or i64 %35, %36
  store i64 %37, i64* %6, align 8
  br label %96

38:                                               ; preds = %13
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @_REGION2_SIZE, align 8
  %41 = icmp ule i64 %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = load i32, i32* @_REGION3_ENTRY_EMPTY, align 4
  %44 = call i64 @base_crst_alloc(i32 %43)
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store i64 0, i64* %3, align 8
  br label %104

48:                                               ; preds = %42
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @base_region3_walk(i64 %49, i64 %50, i64 %51, i32 1)
  store i32 %52, i32* %9, align 4
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @_ASCE_TYPE_REGION3, align 8
  %55 = or i64 %53, %54
  %56 = load i64, i64* @_ASCE_TABLE_LENGTH, align 8
  %57 = or i64 %55, %56
  store i64 %57, i64* %6, align 8
  br label %95

58:                                               ; preds = %38
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* @_REGION1_SIZE, align 8
  %61 = icmp ule i64 %59, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %58
  %63 = load i32, i32* @_REGION2_ENTRY_EMPTY, align 4
  %64 = call i64 @base_crst_alloc(i32 %63)
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %7, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  store i64 0, i64* %3, align 8
  br label %104

68:                                               ; preds = %62
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %4, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @base_region2_walk(i64 %69, i64 %70, i64 %71, i32 1)
  store i32 %72, i32* %9, align 4
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* @_ASCE_TYPE_REGION2, align 8
  %75 = or i64 %73, %74
  %76 = load i64, i64* @_ASCE_TABLE_LENGTH, align 8
  %77 = or i64 %75, %76
  store i64 %77, i64* %6, align 8
  br label %94

78:                                               ; preds = %58
  %79 = load i32, i32* @_REGION1_ENTRY_EMPTY, align 4
  %80 = call i64 @base_crst_alloc(i32 %79)
  store i64 %80, i64* %7, align 8
  %81 = load i64, i64* %7, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %78
  store i64 0, i64* %3, align 8
  br label %104

84:                                               ; preds = %78
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* %4, align 8
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @base_region1_walk(i64 %85, i64 %86, i64 %87, i32 1)
  store i32 %88, i32* %9, align 4
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* @_ASCE_TYPE_REGION1, align 8
  %91 = or i64 %89, %90
  %92 = load i64, i64* @_ASCE_TABLE_LENGTH, align 8
  %93 = or i64 %91, %92
  store i64 %93, i64* %6, align 8
  br label %94

94:                                               ; preds = %84, %68
  br label %95

95:                                               ; preds = %94, %48
  br label %96

96:                                               ; preds = %95, %28
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i64, i64* %6, align 8
  %101 = call i32 @base_asce_free(i64 %100)
  store i64 0, i64* %6, align 8
  br label %102

102:                                              ; preds = %99, %96
  %103 = load i64, i64* %6, align 8
  store i64 %103, i64* %3, align 8
  br label %104

104:                                              ; preds = %102, %83, %67, %47, %27, %12
  %105 = load i64, i64* %3, align 8
  ret i64 %105
}

declare dso_local i64 @base_pgt_cache_init(...) #1

declare dso_local i64 @base_crst_alloc(i32) #1

declare dso_local i32 @base_segment_walk(i64, i64, i64, i32) #1

declare dso_local i32 @base_region3_walk(i64, i64, i64, i32) #1

declare dso_local i32 @base_region2_walk(i64, i64, i64, i32) #1

declare dso_local i32 @base_region1_walk(i64, i64, i64, i32) #1

declare dso_local i32 @base_asce_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
