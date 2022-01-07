; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-news-recommend-extension.c_gather_heap_advance.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-news-recommend-extension.c_gather_heap_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, %struct.news_id, i32 }
%struct.news_id = type { i32 }

@GH_N = common dso_local global i32 0, align 4
@GH = common dso_local global %struct.TYPE_4__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gather_heap_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gather_heap_advance() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.news_id, align 4
  store i32 6, i32* %2, align 4
  %6 = load i32, i32* @GH_N, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %118

9:                                                ; preds = %0
  %10 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @GH, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %10, i64 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %1, align 8
  %13 = load i32, i32* %2, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %19, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %9
  %24 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @GH, align 8
  %25 = load i32, i32* @GH_N, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* @GH_N, align 4
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %24, i64 %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %1, align 8
  %30 = load i32, i32* @GH_N, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  br label %118

33:                                               ; preds = %23
  br label %48

34:                                               ; preds = %9
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = call i32 @assert(i32 0)
  br label %45

45:                                               ; preds = %43, %34
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %47 = call i32 @load_heap_v(%struct.TYPE_4__* %46)
  br label %48

48:                                               ; preds = %45, %33
  store i32 1, i32* %3, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = bitcast %struct.news_id* %5 to i8*
  %52 = bitcast %struct.news_id* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 8 %52, i64 4, i1 false)
  br label %53

53:                                               ; preds = %48, %101
  %54 = load i32, i32* %3, align 4
  %55 = mul nsw i32 %54, 2
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @GH_N, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %112

60:                                               ; preds = %53
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @GH_N, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %87

64:                                               ; preds = %60
  %65 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @GH, align 8
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %65, i64 %68
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @GH, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %72, i64 %74
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.news_id, %struct.news_id* %71, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.news_id, %struct.news_id* %77, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @news_id_compare(i32 %79, i32 %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %64
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %84, %64, %60
  %88 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @GH, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %88, i64 %90
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.news_id, %struct.news_id* %5, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.news_id, %struct.news_id* %93, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @news_id_compare(i32 %95, i32 %97)
  %99 = icmp sle i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %87
  br label %112

101:                                              ; preds = %87
  %102 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @GH, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %102, i64 %104
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @GH, align 8
  %108 = load i32, i32* %3, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %107, i64 %109
  store %struct.TYPE_4__* %106, %struct.TYPE_4__** %110, align 8
  %111 = load i32, i32* %4, align 4
  store i32 %111, i32* %3, align 4
  br label %53

112:                                              ; preds = %100, %59
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %114 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @GH, align 8
  %115 = load i32, i32* %3, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %114, i64 %116
  store %struct.TYPE_4__* %113, %struct.TYPE_4__** %117, align 8
  br label %118

118:                                              ; preds = %112, %32, %8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @load_heap_v(%struct.TYPE_4__*) #1

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
