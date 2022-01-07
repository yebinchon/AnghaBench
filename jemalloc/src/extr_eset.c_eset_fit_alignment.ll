; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_eset.c_eset_fit_alignment.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_eset.c_eset_fit_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@eset_bitmap_info = common dso_local global i32 0, align 4
@SC_NPSIZES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i64, i64, i64)* @eset_fit_alignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @eset_fit_alignment(%struct.TYPE_3__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @sz_psz_quantize_ceil(i64 %18)
  %20 = call i64 @sz_psz2ind(i32 %19)
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @sz_psz_quantize_ceil(i64 %21)
  %23 = call i64 @sz_psz2ind(i32 %22)
  store i64 %23, i64* %11, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call i64 @bitmap_ffu(i32 %26, i32* @eset_bitmap_info, i64 %27)
  store i64 %28, i64* %12, align 8
  br label %29

29:                                               ; preds = %90, %4
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %97

33:                                               ; preds = %29
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* @SC_NPSIZES, align 8
  %36 = icmp ult i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %12, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = call i32 @extent_heap_empty(i32* %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %12, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = call i32* @extent_heap_first(i32* %53)
  store i32* %54, i32** %13, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = call i64 @extent_base_get(i32* %55)
  store i64 %56, i64* %14, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = call i64 @extent_size_get(i32* %57)
  store i64 %58, i64* %15, align 8
  %59 = load i64, i64* %15, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp uge i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load i64, i64* %14, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @PAGE_CEILING(i64 %65)
  %67 = call i64 @ALIGNMENT_CEILING(i64 %64, i32 %66)
  store i64 %67, i64* %16, align 8
  %68 = load i64, i64* %14, align 8
  %69 = load i64, i64* %16, align 8
  %70 = icmp ugt i64 %68, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %33
  %72 = load i64, i64* %14, align 8
  %73 = load i64, i64* %15, align 8
  %74 = add i64 %72, %73
  %75 = load i64, i64* %16, align 8
  %76 = icmp ule i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71, %33
  br label %90

78:                                               ; preds = %71
  %79 = load i64, i64* %16, align 8
  %80 = load i64, i64* %14, align 8
  %81 = sub i64 %79, %80
  store i64 %81, i64* %17, align 8
  %82 = load i64, i64* %15, align 8
  %83 = load i64, i64* %17, align 8
  %84 = sub i64 %82, %83
  %85 = load i64, i64* %7, align 8
  %86 = icmp uge i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = load i32*, i32** %13, align 8
  store i32* %88, i32** %5, align 8
  br label %98

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %89, %77
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i64, i64* %12, align 8
  %95 = add i64 %94, 1
  %96 = call i64 @bitmap_ffu(i32 %93, i32* @eset_bitmap_info, i64 %95)
  store i64 %96, i64* %12, align 8
  br label %29

97:                                               ; preds = %29
  store i32* null, i32** %5, align 8
  br label %98

98:                                               ; preds = %97, %87
  %99 = load i32*, i32** %5, align 8
  ret i32* %99
}

declare dso_local i64 @sz_psz2ind(i32) #1

declare dso_local i32 @sz_psz_quantize_ceil(i64) #1

declare dso_local i64 @bitmap_ffu(i32, i32*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @extent_heap_empty(i32*) #1

declare dso_local i32* @extent_heap_first(i32*) #1

declare dso_local i64 @extent_base_get(i32*) #1

declare dso_local i64 @extent_size_get(i32*) #1

declare dso_local i64 @ALIGNMENT_CEILING(i64, i32) #1

declare dso_local i32 @PAGE_CEILING(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
