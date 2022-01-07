; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_get_recommend_place_f.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_get_recommend_place_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, double, i64, i64, i64, %struct.TYPE_4__* }

@RECOMMEND_MODE = common dso_local global i32 0, align 4
@RECOMMEND_PLACES_HASH = common dso_local global i32 0, align 4
@Place = common dso_local global i32** null, align 8
@tot_places = common dso_local global i64 0, align 8
@MAX_GROUPS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32, i32, i32, i32)* @get_recommend_place_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @get_recommend_place_f(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__**, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @RECOMMEND_MODE, align 4
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = mul nsw i32 %15, 17239
  %17 = load i32, i32* %7, align 4
  %18 = mul nsw i32 %17, 239
  %19 = add nsw i32 %16, %18
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %19, %20
  %22 = load i32, i32* @RECOMMEND_PLACES_HASH, align 4
  %23 = urem i32 %21, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32**, i32*** @Place, align 8
  %25 = bitcast i32** %24 to %struct.TYPE_4__**
  %26 = load i32, i32* %10, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %25, i64 %27
  store %struct.TYPE_4__** %28, %struct.TYPE_4__*** %11, align 8
  br label %29

29:                                               ; preds = %77, %4
  %30 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %33, label %80

33:                                               ; preds = %29
  %34 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %12, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %77

41:                                               ; preds = %33
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %77

47:                                               ; preds = %41
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %47
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 7
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** %57, align 8
  %58 = load i32, i32* %9, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %53
  %61 = load i32**, i32*** @Place, align 8
  %62 = load i32, i32* %10, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = bitcast i32* %65 to %struct.TYPE_4__*
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 7
  store %struct.TYPE_4__* %66, %struct.TYPE_4__** %68, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %70 = bitcast %struct.TYPE_4__* %69 to i32*
  %71 = load i32**, i32*** @Place, align 8
  %72 = load i32, i32* %10, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  store i32* %70, i32** %74, align 8
  br label %75

75:                                               ; preds = %60, %53
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %76, %struct.TYPE_4__** %5, align 8
  br label %124

77:                                               ; preds = %47, %41, %33
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 7
  store %struct.TYPE_4__** %79, %struct.TYPE_4__*** %11, align 8
  br label %29

80:                                               ; preds = %29
  %81 = load i32, i32* %9, align 4
  %82 = icmp sle i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %80
  %84 = load i64, i64* @tot_places, align 8
  %85 = load i64, i64* @MAX_GROUPS, align 8
  %86 = icmp sge i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83, %80
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %124

88:                                               ; preds = %83
  %89 = call %struct.TYPE_4__* @zmalloc(i32 56)
  store %struct.TYPE_4__* %89, %struct.TYPE_4__** %12, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load i32**, i32*** @Place, align 8
  %100 = load i32, i32* %10, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = bitcast i32* %103 to %struct.TYPE_4__*
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 7
  store %struct.TYPE_4__* %104, %struct.TYPE_4__** %106, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 3
  store double 0.000000e+00, double* %108, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 6
  store i64 0, i64* %110, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 5
  store i64 0, i64* %112, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 4
  store i64 0, i64* %114, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %116 = bitcast %struct.TYPE_4__* %115 to i32*
  %117 = load i32**, i32*** @Place, align 8
  %118 = load i32, i32* %10, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  store i32* %116, i32** %120, align 8
  %121 = load i64, i64* @tot_places, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* @tot_places, align 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %123, %struct.TYPE_4__** %5, align 8
  br label %124

124:                                              ; preds = %88, %87, %75
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  ret %struct.TYPE_4__* %125
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_4__* @zmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
