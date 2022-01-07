; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_rpc-proxy-merge-news-r.c_gather_heap_insert.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_rpc-proxy-merge-news-r.c_gather_heap_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32*, %struct.news_id }
%struct.news_id = type { i32 }
%struct.gather_entry = type { i32, i32* }

@GH_N = common dso_local global i64 0, align 8
@MAX_CLUSTER_SERVERS = common dso_local global i64 0, align 8
@TL_VECTOR = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"gather_heap_insert: %d elements (size %d)\0A\00", align 1
@GH_total = common dso_local global i32 0, align 4
@GH_E = common dso_local global %struct.TYPE_5__* null, align 8
@GH = common dso_local global %struct.TYPE_5__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gather_entry*)* @gather_heap_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gather_heap_insert(%struct.gather_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gather_entry*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.news_id, align 4
  store %struct.gather_entry* %0, %struct.gather_entry** %3, align 8
  %10 = load i64, i64* @GH_N, align 8
  %11 = load i64, i64* @MAX_CLUSTER_SERVERS, align 8
  %12 = icmp ult i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  store i32 6, i32* %5, align 4
  %15 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %16 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %48, label %19

19:                                               ; preds = %1
  %20 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %21 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TL_VECTOR, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %48, label %27

27:                                               ; preds = %19
  %28 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %29 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %27
  %35 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %36 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = mul nsw i32 4, %38
  %40 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %41 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %39, %44
  %46 = add nsw i32 8, %45
  %47 = icmp ne i32 %37, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %34, %27, %19, %1
  store i32 0, i32* %2, align 4
  br label %140

49:                                               ; preds = %34
  %50 = load i32, i32* @verbosity, align 4
  %51 = icmp sge i32 %50, 3
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load i32, i32* @stderr, align 4
  %54 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %55 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %60 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @fprintf(i32 %53, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %52, %49
  %64 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %65 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @GH_total, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* @GH_total, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** @GH_E, align 8
  %73 = load i64, i64* @GH_N, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %73
  store %struct.TYPE_5__* %74, %struct.TYPE_5__** %4, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %79 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  store i32* %81, i32** %83, align 8
  %84 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %85 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %5, align 4
  %90 = mul nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  store i32* %92, i32** %94, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %96 = call i32 @load_heap_v(%struct.TYPE_5__* %95)
  %97 = load i64, i64* @GH_N, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* @GH_N, align 8
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %7, align 4
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 3
  %102 = bitcast %struct.news_id* %9 to i8*
  %103 = bitcast %struct.news_id* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %102, i8* align 8 %103, i64 4, i1 false)
  br label %104

104:                                              ; preds = %123, %63
  %105 = load i32, i32* %7, align 4
  %106 = icmp sgt i32 %105, 1
  br i1 %106, label %107, label %134

107:                                              ; preds = %104
  %108 = load i32, i32* %7, align 4
  %109 = ashr i32 %108, 1
  store i32 %109, i32* %8, align 4
  %110 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %110, i64 %112
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.news_id, %struct.news_id* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = getelementptr inbounds %struct.news_id, %struct.news_id* %9, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @news_id_compare(i32 %117, i32 %119)
  %121 = icmp sle i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %107
  br label %134

123:                                              ; preds = %107
  %124 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %124, i64 %126
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %129, i64 %131
  store %struct.TYPE_5__* %128, %struct.TYPE_5__** %132, align 8
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %7, align 4
  br label %104

134:                                              ; preds = %122, %104
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %136 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %136, i64 %138
  store %struct.TYPE_5__* %135, %struct.TYPE_5__** %139, align 8
  store i32 1, i32* %2, align 4
  br label %140

140:                                              ; preds = %134, %48
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @load_heap_v(%struct.TYPE_5__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @news_id_compare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
