; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_eset.c_eset_first_fit_locked.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_eset.c_eset_first_fit_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32*, i32 }

@maps_coalesce = common dso_local global i32 0, align 4
@opt_retain = common dso_local global i32 0, align 4
@eset_bitmap_info = common dso_local global i32 0, align 4
@SC_NPSIZES = common dso_local global i32 0, align 4
@opt_lg_extent_max_active_fit = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_3__*, i64)* @eset_first_fit_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @eset_first_fit_locked(i32* %0, %struct.TYPE_3__* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* null, i32** %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @sz_psz_quantize_ceil(i64 %12)
  %14 = call i64 @sz_psz2ind(i32 %13)
  store i64 %14, i64* %9, align 8
  %15 = load i32, i32* @maps_coalesce, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @opt_retain, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %17
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = call i64 @extent_heap_empty(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %36

29:                                               ; preds = %20
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = call i32* @extent_heap_first(i32* %34)
  br label %36

36:                                               ; preds = %29, %28
  %37 = phi i32* [ null, %28 ], [ %35, %29 ]
  store i32* %37, i32** %4, align 8
  br label %117

38:                                               ; preds = %17, %3
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i64 @bitmap_ffu(i32 %41, i32* @eset_bitmap_info, i64 %42)
  store i64 %43, i64* %10, align 8
  br label %44

44:                                               ; preds = %108, %38
  %45 = load i64, i64* %10, align 8
  %46 = load i32, i32* @SC_NPSIZES, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %115

50:                                               ; preds = %44
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = call i64 @extent_heap_empty(i32* %55)
  %57 = icmp ne i64 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = call i32* @extent_heap_first(i32* %65)
  store i32* %66, i32** %11, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = call i64 @extent_size_get(i32* %67)
  %69 = load i64, i64* %7, align 8
  %70 = icmp uge i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %50
  %78 = load i64, i64* %10, align 8
  %79 = call i64 @sz_pind2sz(i64 %78)
  %80 = load i64, i64* @opt_lg_extent_max_active_fit, align 8
  %81 = lshr i64 %79, %80
  %82 = load i64, i64* %7, align 8
  %83 = icmp ugt i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %115

85:                                               ; preds = %77, %50
  %86 = load i32*, i32** %8, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = load i32*, i32** %11, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = call i64 @extent_snad_comp(i32* %89, i32* %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88, %85
  %94 = load i32*, i32** %11, align 8
  store i32* %94, i32** %8, align 8
  br label %95

95:                                               ; preds = %93, %88
  %96 = load i64, i64* %10, align 8
  %97 = load i32, i32* @SC_NPSIZES, align 4
  %98 = sext i32 %97 to i64
  %99 = icmp eq i64 %96, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %115

101:                                              ; preds = %95
  %102 = load i64, i64* %10, align 8
  %103 = load i32, i32* @SC_NPSIZES, align 4
  %104 = sext i32 %103 to i64
  %105 = icmp ult i64 %102, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  br label %108

108:                                              ; preds = %101
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i64, i64* %10, align 8
  %113 = add i64 %112, 1
  %114 = call i64 @bitmap_ffu(i32 %111, i32* @eset_bitmap_info, i64 %113)
  store i64 %114, i64* %10, align 8
  br label %44

115:                                              ; preds = %100, %84, %44
  %116 = load i32*, i32** %8, align 8
  store i32* %116, i32** %4, align 8
  br label %117

117:                                              ; preds = %115, %36
  %118 = load i32*, i32** %4, align 8
  ret i32* %118
}

declare dso_local i64 @sz_psz2ind(i32) #1

declare dso_local i32 @sz_psz_quantize_ceil(i64) #1

declare dso_local i64 @extent_heap_empty(i32*) #1

declare dso_local i32* @extent_heap_first(i32*) #1

declare dso_local i64 @bitmap_ffu(i32, i32*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @extent_size_get(i32*) #1

declare dso_local i64 @sz_pind2sz(i64) #1

declare dso_local i64 @extent_snad_comp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
