; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_rpc-proxy-merge-news-r.c_union_heap_to_array.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_rpc-proxy-merge-news-r.c_union_heap_to_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.news_item }
%struct.news_item = type { i64 }

@UH_size = common dso_local global i8* null, align 8
@UH_total = common dso_local global i8* null, align 8
@UH = common dso_local global %struct.TYPE_2__* null, align 8
@UH_limit = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @union_heap_to_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @union_heap_to_array() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.news_item, align 8
  %3 = load i8*, i8** @UH_size, align 8
  store i8* %3, i8** @UH_total, align 8
  %4 = load i8*, i8** @UH_size, align 8
  %5 = ptrtoint i8* %4 to i32
  store i32 %5, i32* %1, align 4
  br label %6

6:                                                ; preds = %43, %0
  %7 = load i32, i32* %1, align 4
  %8 = icmp sge i32 %7, 2
  br i1 %8, label %9, label %46

9:                                                ; preds = %6
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @UH, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = bitcast %struct.news_item* %2 to i8*
  %16 = bitcast %struct.news_item* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 8, i1 false)
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @UH, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.news_item, %struct.news_item* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.news_item, %struct.news_item* %2, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sle i64 %21, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @UH, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @UH, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = bitcast %struct.news_item* %31 to i8*
  %36 = bitcast %struct.news_item* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 8, i1 false)
  %37 = load i8*, i8** @UH_size, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 -1
  store i8* %38, i8** @UH_size, align 8
  %39 = load i8*, i8** @UH_size, align 8
  store i8* %39, i8** @UH_limit, align 8
  %40 = getelementptr inbounds %struct.news_item, %struct.news_item* %2, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @union_heap_insert(i64 %41)
  br label %43

43:                                               ; preds = %9
  %44 = load i32, i32* %1, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %1, align 4
  br label %6

46:                                               ; preds = %6
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @union_heap_insert(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
