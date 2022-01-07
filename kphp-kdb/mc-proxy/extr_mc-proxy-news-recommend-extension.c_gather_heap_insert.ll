; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-news-recommend-extension.c_gather_heap_insert.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-news-recommend-extension.c_gather_heap_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.news_id, i64, i64 }
%struct.news_id = type { i32 }
%struct.gather_entry = type { i64, i32, i32, i64 }

@GH_N = common dso_local global i64 0, align 8
@MAX_CLUSTER_SERVERS = common dso_local global i64 0, align 8
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
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.news_id, align 4
  store %struct.gather_entry* %0, %struct.gather_entry** %3, align 8
  %11 = load i64, i64* @GH_N, align 8
  %12 = load i64, i64* @MAX_CLUSTER_SERVERS, align 8
  %13 = icmp ult i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %17 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sle i64 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %1
  %21 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %22 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %23, 8
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %27 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %20, %1
  store i32 0, i32* %2, align 4
  br label %129

31:                                               ; preds = %25
  %32 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %33 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = ashr i32 %34, 2
  store i32 %35, i32* %4, align 4
  store i32 %35, i32* %5, align 4
  store i32 6, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %4, align 4
  %38 = sdiv i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %6, align 4
  %41 = mul nsw i32 %39, %40
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* @verbosity, align 4
  %43 = icmp sge i32 %42, 3
  br i1 %43, label %44, label %53

44:                                               ; preds = %31
  %45 = load i32, i32* @stderr, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %48 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = ashr i32 %49, 2
  %51 = sub nsw i32 %50, 1
  %52 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %51)
  br label %53

53:                                               ; preds = %44, %31
  %54 = load i32, i32* %4, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %129

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @GH_total, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* @GH_total, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** @GH_E, align 8
  %62 = load i64, i64* @GH_N, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %62
  store %struct.TYPE_5__* %63, %struct.TYPE_5__** %7, align 8
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %68 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 3
  store i64 %69, i64* %71, align 8
  %72 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %73 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %76 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = sdiv i32 %77, 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %74, %79
  %81 = add nsw i64 %80, 1
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %85 = call i32 @load_heap_v(%struct.TYPE_5__* %84)
  %86 = load i64, i64* @GH_N, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* @GH_N, align 8
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %8, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = bitcast %struct.news_id* %10 to i8*
  %92 = bitcast %struct.news_id* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %91, i8* align 4 %92, i64 4, i1 false)
  br label %93

93:                                               ; preds = %112, %57
  %94 = load i32, i32* %8, align 4
  %95 = icmp sgt i32 %94, 1
  br i1 %95, label %96, label %123

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = ashr i32 %97, 1
  store i32 %98, i32* %9, align 4
  %99 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %99, i64 %101
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.news_id, %struct.news_id* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.news_id, %struct.news_id* %10, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @news_id_compare(i32 %106, i32 %108)
  %110 = icmp sle i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %96
  br label %123

112:                                              ; preds = %96
  %113 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %113, i64 %115
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %118, i64 %120
  store %struct.TYPE_5__* %117, %struct.TYPE_5__** %121, align 8
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* %8, align 4
  br label %93

123:                                              ; preds = %111, %93
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %125 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %125, i64 %127
  store %struct.TYPE_5__* %124, %struct.TYPE_5__** %128, align 8
  store i32 1, i32* %2, align 4
  br label %129

129:                                              ; preds = %123, %56, %30
  %130 = load i32, i32* %2, align 4
  ret i32 %130
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
