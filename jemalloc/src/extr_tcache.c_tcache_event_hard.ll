; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_tcache.c_tcache_event_hard.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_tcache.c_tcache_event_hard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32*, i32* }
%struct.TYPE_17__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32 }

@SC_NBINS = common dso_local global i64 0, align 8
@nhbins = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcache_event_hard(i32* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @SC_NBINS, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call %struct.TYPE_17__* @tcache_small_bin_get(%struct.TYPE_16__* %17, i64 %18)
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %6, align 8
  store i32 1, i32* %7, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call %struct.TYPE_17__* @tcache_large_bin_get(%struct.TYPE_16__* %21, i64 %22)
  store %struct.TYPE_17__* %23, %struct.TYPE_17__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @cache_bin_low_water_get(%struct.TYPE_17__* %25, i64 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @cache_bin_ncached_get(%struct.TYPE_17__* %28, i64 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %91

33:                                               ; preds = %24
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %78

36:                                               ; preds = %33
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32*, i32** %3, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 %51, %52
  %54 = load i32, i32* %8, align 4
  %55 = ashr i32 %54, 2
  %56 = add nsw i32 %53, %55
  %57 = call i32 @tcache_bin_flush_small(i32* %47, %struct.TYPE_16__* %48, %struct.TYPE_17__* %49, i64 %50, i32 %56)
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @cache_bin_ncached_max_get(i64 %58)
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  %67 = ashr i32 %59, %66
  %68 = icmp sge i32 %67, 1
  br i1 %68, label %69, label %77

69:                                               ; preds = %36
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* %5, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %69, %36
  br label %90

78:                                               ; preds = %33
  %79 = load i32*, i32** %3, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %82 = load i64, i64* %5, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %8, align 4
  %85 = sub nsw i32 %83, %84
  %86 = load i32, i32* %8, align 4
  %87 = ashr i32 %86, 2
  %88 = add nsw i32 %85, %87
  %89 = call i32 @tcache_bin_flush_large(i32* %79, %struct.TYPE_16__* %80, %struct.TYPE_17__* %81, i64 %82, i32 %88)
  br label %90

90:                                               ; preds = %78, %77
  br label %129

91:                                               ; preds = %24
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %128

94:                                               ; preds = %91
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* %5, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %128

102:                                              ; preds = %94
  %103 = load i32, i32* %8, align 4
  %104 = icmp eq i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* %5, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = icmp sgt i32 %112, 1
  br i1 %113, label %114, label %122

114:                                              ; preds = %102
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* %5, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %114, %102
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* %5, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32 0, i32* %127, align 4
  br label %128

128:                                              ; preds = %122, %94, %91
  br label %129

129:                                              ; preds = %128, %90
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %137, align 8
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @nhbins, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %129
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  store i64 0, i64* %147, align 8
  br label %148

148:                                              ; preds = %145, %129
  ret void
}

declare dso_local %struct.TYPE_17__* @tcache_small_bin_get(%struct.TYPE_16__*, i64) #1

declare dso_local %struct.TYPE_17__* @tcache_large_bin_get(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @cache_bin_low_water_get(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @cache_bin_ncached_get(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tcache_bin_flush_small(i32*, %struct.TYPE_16__*, %struct.TYPE_17__*, i64, i32) #1

declare dso_local i32 @cache_bin_ncached_max_get(i64) #1

declare dso_local i32 @tcache_bin_flush_large(i32*, %struct.TYPE_16__*, %struct.TYPE_17__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
