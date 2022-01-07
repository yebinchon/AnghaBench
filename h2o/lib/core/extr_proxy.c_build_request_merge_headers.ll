; ModuleID = '/home/carl/AnghaBench/h2o/lib/core/extr_proxy.c_build_request_merge_headers.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/core/extr_proxy.c_build_request_merge_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8* }

@buf = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i32, i8* } (i32*, i32, i8*, i32, i8*, i32)* @build_request_merge_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i32, i8* } @build_request_merge_headers(i32* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = bitcast %struct.TYPE_5__* %8 to { i32, i8* }*
  %15 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %14, i32 0, i32 0
  store i32 %1, i32* %15, align 8
  %16 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %14, i32 0, i32 1
  store i8* %2, i8** %16, align 8
  %17 = bitcast %struct.TYPE_5__* %9 to { i32, i8* }*
  %18 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %17, i32 0, i32 0
  store i32 %3, i32* %18, align 8
  %19 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %17, i32 0, i32 1
  store i8* %4, i8** %19, align 8
  store i32* %0, i32** %10, align 8
  store i32 %5, i32* %11, align 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = bitcast %struct.TYPE_5__* %7 to i8*
  %25 = bitcast %struct.TYPE_5__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 16, i1 false)
  br label %84

26:                                               ; preds = %6
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = bitcast %struct.TYPE_5__* %7 to i8*
  %32 = bitcast %struct.TYPE_5__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 16, i1 false)
  br label %84

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %36, %38
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %12, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = load i64, i64* %12, align 8
  %46 = call i8* @h2o_mem_alloc_pool(i32* %41, i32 %44, i64 %45)
  store i8* %46, i8** %13, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @memcpy(i8* %47, i8* %49, i32 %51)
  %53 = load i32, i32* %11, align 4
  %54 = trunc i32 %53 to i8
  %55 = load i8*, i8** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  store i8 %54, i8* %59, align 1
  %60 = load i8*, i8** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %60, i64 %64
  store i8 32, i8* %65, align 1
  %66 = load i8*, i8** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  %71 = getelementptr inbounds i8, i8* %70, i64 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @memcpy(i8* %71, i8* %73, i32 %75)
  %77 = load i8*, i8** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i8* %77, i8** %78, align 8
  %79 = load i64, i64* %12, align 8
  %80 = trunc i64 %79 to i32
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %80, i32* %81, align 8
  %82 = bitcast %struct.TYPE_5__* %7 to i8*
  %83 = bitcast %struct.TYPE_5__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %82, i8* align 8 %83, i64 16, i1 false)
  br label %84

84:                                               ; preds = %33, %30, %23
  %85 = bitcast %struct.TYPE_5__* %7 to { i32, i8* }*
  %86 = load { i32, i8* }, { i32, i8* }* %85, align 8
  ret { i32, i8* } %86
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @h2o_mem_alloc_pool(i32*, i32, i64) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
