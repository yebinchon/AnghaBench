; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_errordoc.c_h2o_errordoc_register.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_errordoc.c_h2o_errordoc_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.st_errordoc_filter_t = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32 }

@on_filter_setup_ostream = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_errordoc_register(i32* %0, %struct.TYPE_7__* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.st_errordoc_filter_t*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_9__, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @h2o_create_filter(i32* %12, i32 24)
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.st_errordoc_filter_t*
  store %struct.st_errordoc_filter_t* %15, %struct.st_errordoc_filter_t** %7, align 8
  %16 = load i32, i32* @on_filter_setup_ostream, align 4
  %17 = load %struct.st_errordoc_filter_t*, %struct.st_errordoc_filter_t** %7, align 8
  %18 = getelementptr inbounds %struct.st_errordoc_filter_t, %struct.st_errordoc_filter_t* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  %20 = load %struct.st_errordoc_filter_t*, %struct.st_errordoc_filter_t** %7, align 8
  %21 = getelementptr inbounds %struct.st_errordoc_filter_t, %struct.st_errordoc_filter_t* %20, i32 0, i32 0
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @h2o_vector_reserve(i32* null, %struct.TYPE_8__* %21, i64 %22)
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.st_errordoc_filter_t*, %struct.st_errordoc_filter_t** %7, align 8
  %26 = getelementptr inbounds %struct.st_errordoc_filter_t, %struct.st_errordoc_filter_t* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i64 %24, i64* %27, align 8
  store i64 0, i64* %8, align 8
  br label %28

28:                                               ; preds = %61, %3
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %64

32:                                               ; preds = %28
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 %34
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %9, align 8
  %36 = load %struct.st_errordoc_filter_t*, %struct.st_errordoc_filter_t** %7, align 8
  %37 = getelementptr inbounds %struct.st_errordoc_filter_t, %struct.st_errordoc_filter_t* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %40
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %10, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @h2o_strdup(i32* null, i32 %52, i32 %56)
  %58 = bitcast %struct.TYPE_9__* %11 to i64*
  store i64 %57, i64* %58, align 4
  %59 = bitcast %struct.TYPE_9__* %48 to i8*
  %60 = bitcast %struct.TYPE_9__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %60, i64 8, i1 false)
  br label %61

61:                                               ; preds = %32
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %8, align 8
  br label %28

64:                                               ; preds = %28
  ret void
}

declare dso_local i64 @h2o_create_filter(i32*, i32) #1

declare dso_local i32 @h2o_vector_reserve(i32*, %struct.TYPE_8__*, i64) #1

declare dso_local i64 @h2o_strdup(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
