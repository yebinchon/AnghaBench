; ModuleID = '/home/carl/AnghaBench/libgit2/src/xdiff/extr_xdiffi.c_xdl_do_diff.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/xdiff/extr_xdiffi.c_xdl_do_diff.c"
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
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.TYPE_23__, align 8
  %16 = alloca %struct.TYPE_24__, align 4
  %17 = alloca %struct.TYPE_24__, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %8, align 8
  store %struct.TYPE_22__* %3, %struct.TYPE_22__** %9, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @XDF_DIFF_ALG(i32 %20)
  %22 = load i64, i64* @XDF_PATIENCE_DIFF, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %29 = call i32 @xdl_do_patience_diff(i32* %25, i32* %26, %struct.TYPE_21__* %27, %struct.TYPE_22__* %28)
  store i32 %29, i32* %5, align 4
  br label %173

30:                                               ; preds = %4
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @XDF_DIFF_ALG(i32 %33)
  %35 = load i64, i64* @XDF_HISTOGRAM_DIFF, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load i32*, i32** %6, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %42 = call i32 @xdl_do_histogram_diff(i32* %38, i32* %39, %struct.TYPE_21__* %40, %struct.TYPE_22__* %41)
  store i32 %42, i32* %5, align 4
  br label %173

43:                                               ; preds = %30
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %48 = call i64 @xdl_prepare_env(i32* %44, i32* %45, %struct.TYPE_21__* %46, %struct.TYPE_22__* %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 -1, i32* %5, align 4
  br label %173

51:                                               ; preds = %43
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD3(i64* %10, i32 %55, i32 %59, i32 3)
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @GIT_ERROR_CHECK_ALLOC_MULTIPLY(i64* %11, i64 %61, i32 2)
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %11, i64 %63, i32 2)
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @GIT_ERROR_CHECK_ALLOC_MULTIPLY(i64* %11, i64 %65, i32 8)
  %67 = load i64, i64* %11, align 8
  %68 = call i64 @xdl_malloc(i64 %67)
  %69 = inttoptr i64 %68 to i64*
  store i64* %69, i64** %12, align 8
  %70 = icmp ne i64* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %51
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %73 = call i32 @xdl_free_env(%struct.TYPE_22__* %72)
  store i32 -1, i32* %5, align 4
  br label %173

74:                                               ; preds = %51
  %75 = load i64*, i64** %12, align 8
  store i64* %75, i64** %13, align 8
  %76 = load i64*, i64** %13, align 8
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  store i64* %78, i64** %14, align 8
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  %84 = load i64*, i64** %13, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  store i64* %86, i64** %13, align 8
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  %92 = load i64*, i64** %14, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  store i64* %94, i64** %14, align 8
  %95 = load i64, i64* %10, align 8
  %96 = call i64 @xdl_bogosqrt(i64 %95)
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  store i64 %96, i64* %97, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @XDL_MAX_COST_MIN, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %74
  %103 = load i64, i64* @XDL_MAX_COST_MIN, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  store i64 %103, i64* %104, align 8
  br label %105

105:                                              ; preds = %102, %74
  %106 = load i32, i32* @XDL_SNAKE_CNT, align 4
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 2
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* @XDL_HEUR_MIN_COST, align 4
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 1
  store i32 %108, i32* %109, align 8
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  store i32 %113, i32* %114, align 4
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 3
  store i32 %118, i32* %119, align 4
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 2
  store i32 %123, i32* %124, align 4
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 1
  store i32 %128, i32* %129, align 4
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  store i32 %133, i32* %134, align 4
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 3
  store i32 %138, i32* %139, align 4
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 2
  store i32 %143, i32* %144, align 4
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 1
  store i32 %148, i32* %149, align 4
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i64*, i64** %13, align 8
  %155 = load i64*, i64** %14, align 8
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @XDF_NEED_MINIMAL, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  %162 = zext i1 %161 to i32
  %163 = call i64 @xdl_recs_cmp(%struct.TYPE_24__* %16, i32 0, i32 %151, %struct.TYPE_24__* %17, i32 0, i32 %153, i64* %154, i64* %155, i32 %162, %struct.TYPE_23__* %15)
  %164 = icmp slt i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %105
  %166 = load i64*, i64** %12, align 8
  %167 = call i32 @xdl_free(i64* %166)
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %169 = call i32 @xdl_free_env(%struct.TYPE_22__* %168)
  store i32 -1, i32* %5, align 4
  br label %173

170:                                              ; preds = %105
  %171 = load i64*, i64** %12, align 8
  %172 = call i32 @xdl_free(i64* %171)
  store i32 0, i32* %5, align 4
  br label %173

173:                                              ; preds = %170, %165, %71, %50, %37, %24
  %174 = load i32, i32* %5, align 4
  ret i32 %174
}

declare dso_local i64 @XDF_DIFF_ALG(i32) #1

declare dso_local i32 @xdl_do_patience_diff(i32*, i32*, %struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @xdl_do_histogram_diff(i32*, i32*, %struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i64 @xdl_prepare_env(i32*, i32*, %struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_ADD3(i64*, i32, i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_MULTIPLY(i64*, i64, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64*, i64, i32) #1

declare dso_local i64 @xdl_malloc(i64) #1

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
