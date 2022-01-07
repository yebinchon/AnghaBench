; ModuleID = '/home/carl/AnghaBench/git/xdiff/extr_xdiffi.c_xdl_do_diff.c'
source_filename = "/home/carl/AnghaBench/git/xdiff/extr_xdiffi.c_xdl_do_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i64, i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i32 }

@XDF_PATIENCE_DIFF = common dso_local global i64 0, align 8
@XDF_HISTOGRAM_DIFF = common dso_local global i64 0, align 8
@XDL_MAX_COST_MIN = common dso_local global i64 0, align 8
@XDL_SNAKE_CNT = common dso_local global i32 0, align 4
@XDL_HEUR_MIN_COST = common dso_local global i32 0, align 4
@XDF_NEED_MINIMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdl_do_diff(i32* %0, i32* %1, %struct.TYPE_21__* %2, %struct.TYPE_22__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_23__, align 8
  %15 = alloca %struct.TYPE_24__, align 4
  %16 = alloca %struct.TYPE_24__, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %8, align 8
  store %struct.TYPE_22__* %3, %struct.TYPE_22__** %9, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @XDF_DIFF_ALG(i32 %19)
  %21 = load i64, i64* @XDF_PATIENCE_DIFF, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %28 = call i32 @xdl_do_patience_diff(i32* %24, i32* %25, %struct.TYPE_21__* %26, %struct.TYPE_22__* %27)
  store i32 %28, i32* %5, align 4
  br label %172

29:                                               ; preds = %4
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @XDF_DIFF_ALG(i32 %32)
  %34 = load i64, i64* @XDF_HISTOGRAM_DIFF, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load i32*, i32** %6, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %41 = call i32 @xdl_do_histogram_diff(i32* %37, i32* %38, %struct.TYPE_21__* %39, %struct.TYPE_22__* %40)
  store i32 %41, i32* %5, align 4
  br label %172

42:                                               ; preds = %29
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %47 = call i64 @xdl_prepare_env(i32* %43, i32* %44, %struct.TYPE_21__* %45, %struct.TYPE_22__* %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 -1, i32* %5, align 4
  br label %172

50:                                               ; preds = %42
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %54, %58
  %60 = add nsw i32 %59, 3
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %10, align 8
  %62 = load i64, i64* %10, align 8
  %63 = mul nsw i64 2, %62
  %64 = add nsw i64 %63, 2
  %65 = mul i64 %64, 8
  %66 = trunc i64 %65 to i32
  %67 = call i64 @xdl_malloc(i32 %66)
  %68 = inttoptr i64 %67 to i64*
  store i64* %68, i64** %11, align 8
  %69 = icmp ne i64* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %50
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %72 = call i32 @xdl_free_env(%struct.TYPE_22__* %71)
  store i32 -1, i32* %5, align 4
  br label %172

73:                                               ; preds = %50
  %74 = load i64*, i64** %11, align 8
  store i64* %74, i64** %12, align 8
  %75 = load i64*, i64** %12, align 8
  %76 = load i64, i64* %10, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  store i64* %77, i64** %13, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  %83 = load i64*, i64** %12, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  store i64* %85, i64** %12, align 8
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  %91 = load i64*, i64** %13, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  store i64* %93, i64** %13, align 8
  %94 = load i64, i64* %10, align 8
  %95 = call i64 @xdl_bogosqrt(i64 %94)
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  store i64 %95, i64* %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @XDL_MAX_COST_MIN, align 8
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %73
  %102 = load i64, i64* @XDL_MAX_COST_MIN, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  store i64 %102, i64* %103, align 8
  br label %104

104:                                              ; preds = %101, %73
  %105 = load i32, i32* @XDL_SNAKE_CNT, align 4
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 2
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* @XDL_HEUR_MIN_COST, align 4
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 1
  store i32 %107, i32* %108, align 8
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  store i32 %112, i32* %113, align 4
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 3
  store i32 %117, i32* %118, align 4
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 2
  store i32 %122, i32* %123, align 4
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 1
  store i32 %127, i32* %128, align 4
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  store i32 %132, i32* %133, align 4
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 3
  store i32 %137, i32* %138, align 4
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 2
  store i32 %142, i32* %143, align 4
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 1
  store i32 %147, i32* %148, align 4
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i64*, i64** %12, align 8
  %154 = load i64*, i64** %13, align 8
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @XDF_NEED_MINIMAL, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  %161 = zext i1 %160 to i32
  %162 = call i64 @xdl_recs_cmp(%struct.TYPE_24__* %15, i32 0, i32 %150, %struct.TYPE_24__* %16, i32 0, i32 %152, i64* %153, i64* %154, i32 %161, %struct.TYPE_23__* %14)
  %163 = icmp slt i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %104
  %165 = load i64*, i64** %11, align 8
  %166 = call i32 @xdl_free(i64* %165)
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %168 = call i32 @xdl_free_env(%struct.TYPE_22__* %167)
  store i32 -1, i32* %5, align 4
  br label %172

169:                                              ; preds = %104
  %170 = load i64*, i64** %11, align 8
  %171 = call i32 @xdl_free(i64* %170)
  store i32 0, i32* %5, align 4
  br label %172

172:                                              ; preds = %169, %164, %70, %49, %36, %23
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local i64 @XDF_DIFF_ALG(i32) #1

declare dso_local i32 @xdl_do_patience_diff(i32*, i32*, %struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @xdl_do_histogram_diff(i32*, i32*, %struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i64 @xdl_prepare_env(i32*, i32*, %struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i64 @xdl_malloc(i32) #1

declare dso_local i32 @xdl_free_env(%struct.TYPE_22__*) #1

declare dso_local i64 @xdl_bogosqrt(i64) #1

declare dso_local i64 @xdl_recs_cmp(%struct.TYPE_24__*, i32, i32, %struct.TYPE_24__*, i32, i32, i64*, i64*, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @xdl_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
