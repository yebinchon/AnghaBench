; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_ckh.c_ckh_new.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_ckh.c_ckh_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32*, i32*, i32*, i64, i64, i64, i64, i64, i64 }

@LG_CKH_BUCKET_CELLS = common dso_local global i32 0, align 4
@CACHELINE = common dso_local global i32 0, align 4
@SC_LARGE_MAXCLASS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ckh_new(i32* %0, %struct.TYPE_3__* %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ugt i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 42, i32* %28, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 6
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @LG_CKH_BUCKET_CELLS, align 4
  %32 = icmp ugt i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = urem i64 %36, 3
  %38 = sub i64 3, %37
  %39 = add i64 %35, %38
  %40 = udiv i64 %39, 3
  %41 = shl i64 %40, 2
  store i64 %41, i64* %12, align 8
  %42 = load i32, i32* @LG_CKH_BUCKET_CELLS, align 4
  store i32 %42, i32* %14, align 4
  br label %43

43:                                               ; preds = %51, %5
  %44 = call i32 @ZU(i32 1)
  %45 = load i32, i32* %14, align 4
  %46 = shl i32 %44, %45
  %47 = zext i32 %46 to i64
  %48 = load i64, i64* %12, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %14, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %14, align 4
  br label %43

54:                                               ; preds = %43
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @LG_CKH_BUCKET_CELLS, align 4
  %57 = sub i32 %55, %56
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* @LG_CKH_BUCKET_CELLS, align 4
  %62 = sub i32 %60, %61
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 5
  store i32* %65, i32** %67, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 4
  store i32* %68, i32** %70, align 8
  %71 = load i32, i32* %14, align 4
  %72 = zext i32 %71 to i64
  %73 = shl i64 4, %72
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* @CACHELINE, align 4
  %76 = call i64 @sz_sa2u(i32 %74, i32 %75)
  store i64 %76, i64* %13, align 8
  %77 = load i64, i64* %13, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %54
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* @SC_LARGE_MAXCLASS, align 8
  %82 = icmp ugt i64 %80, %81
  br label %83

83:                                               ; preds = %79, %54
  %84 = phi i1 [ true, %54 ], [ %82, %79 ]
  %85 = zext i1 %84 to i32
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 1, i32* %11, align 4
  br label %106

89:                                               ; preds = %83
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 @tsd_tsdn(i32* %90)
  %92 = load i64, i64* %13, align 8
  %93 = load i32, i32* @CACHELINE, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @arena_ichoose(i32* %94, i32* null)
  %96 = call i64 @ipallocztm(i32 %91, i64 %92, i32 %93, i32 1, i32* null, i32 1, i32 %95)
  %97 = inttoptr i64 %96 to i32*
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  store i32* %97, i32** %99, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %89
  store i32 1, i32* %11, align 4
  br label %106

105:                                              ; preds = %89
  store i32 0, i32* %11, align 4
  br label %106

106:                                              ; preds = %105, %104, %88
  %107 = load i32, i32* %11, align 4
  ret i32 %107
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ZU(i32) #1

declare dso_local i64 @sz_sa2u(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ipallocztm(i32, i64, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i32 @arena_ichoose(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
