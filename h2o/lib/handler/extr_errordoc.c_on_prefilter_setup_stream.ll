; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_errordoc.c_on_prefilter_setup_stream.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_errordoc.c_on_prefilter_setup_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_19__, i32, i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_20__*, i32* }
%struct.TYPE_20__ = type { i32* }
%struct.st_errordoc_prefilter_t = type { i32, %struct.TYPE_16__, i32, i32, i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_20__* }

@H2O_TOKEN_CONTENT_TYPE = common dso_local global %struct.TYPE_14__* null, align 8
@H2O_TOKEN_CONTENT_LANGUAGE = common dso_local global %struct.TYPE_15__* null, align 8
@H2O_TOKEN_SET_COOKIE = common dso_local global %struct.TYPE_13__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_18__*, i32**)* @on_prefilter_setup_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_prefilter_setup_stream(i32* %0, %struct.TYPE_18__* %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.st_errordoc_prefilter_t*, align 8
  %8 = alloca %struct.TYPE_19__, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store i32** %2, i32*** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = bitcast i32* %11 to i8*
  %13 = bitcast i8* %12 to %struct.st_errordoc_prefilter_t*
  store %struct.st_errordoc_prefilter_t* %13, %struct.st_errordoc_prefilter_t** %7, align 8
  %14 = bitcast %struct.TYPE_19__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 24, i1 false)
  %15 = load %struct.st_errordoc_prefilter_t*, %struct.st_errordoc_prefilter_t** %7, align 8
  %16 = getelementptr inbounds %struct.st_errordoc_prefilter_t, %struct.st_errordoc_prefilter_t* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.st_errordoc_prefilter_t*, %struct.st_errordoc_prefilter_t** %7, align 8
  %21 = getelementptr inbounds %struct.st_errordoc_prefilter_t, %struct.st_errordoc_prefilter_t* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 2
  store i32 %22, i32* %25, align 4
  %26 = load %struct.st_errordoc_prefilter_t*, %struct.st_errordoc_prefilter_t** %7, align 8
  %27 = getelementptr inbounds %struct.st_errordoc_prefilter_t, %struct.st_errordoc_prefilter_t* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 8
  store i64 0, i64* %9, align 8
  br label %32

32:                                               ; preds = %49, %3
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.st_errordoc_prefilter_t*, %struct.st_errordoc_prefilter_t** %7, align 8
  %35 = getelementptr inbounds %struct.st_errordoc_prefilter_t, %struct.st_errordoc_prefilter_t* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %33, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %32
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = load %struct.st_errordoc_prefilter_t*, %struct.st_errordoc_prefilter_t** %7, align 8
  %43 = getelementptr inbounds %struct.st_errordoc_prefilter_t, %struct.st_errordoc_prefilter_t* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i64 %46
  %48 = call i32 @add_header(i32* %41, %struct.TYPE_19__* %8, %struct.TYPE_20__* %47)
  br label %49

49:                                               ; preds = %39
  %50 = load i64, i64* %9, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %9, align 8
  br label %32

52:                                               ; preds = %32
  store i64 0, i64* %9, align 8
  br label %53

53:                                               ; preds = %95, %52
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %54, %59
  br i1 %60, label %61, label %98

61:                                               ; preds = %53
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i64 %67
  store %struct.TYPE_20__* %68, %struct.TYPE_20__** %10, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** @H2O_TOKEN_CONTENT_TYPE, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = icmp eq i32* %71, %73
  br i1 %74, label %89, label %75

75:                                               ; preds = %61
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** @H2O_TOKEN_CONTENT_LANGUAGE, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = icmp eq i32* %78, %80
  br i1 %81, label %89, label %82

82:                                               ; preds = %75
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** @H2O_TOKEN_SET_COOKIE, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = icmp eq i32* %85, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %82, %75, %61
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %93 = call i32 @add_header(i32* %91, %struct.TYPE_19__* %8, %struct.TYPE_20__* %92)
  br label %94

94:                                               ; preds = %89, %82
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %9, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %9, align 8
  br label %53

98:                                               ; preds = %53
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = bitcast %struct.TYPE_19__* %101 to i8*
  %103 = bitcast %struct.TYPE_19__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 8 %103, i64 24, i1 false)
  %104 = load %struct.st_errordoc_prefilter_t*, %struct.st_errordoc_prefilter_t** %7, align 8
  %105 = getelementptr inbounds %struct.st_errordoc_prefilter_t, %struct.st_errordoc_prefilter_t* %104, i32 0, i32 0
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %107 = load i32**, i32*** %6, align 8
  %108 = call i32 @h2o_setup_next_prefilter(i32* %105, %struct.TYPE_18__* %106, i32** %107)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @add_header(i32*, %struct.TYPE_19__*, %struct.TYPE_20__*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @h2o_setup_next_prefilter(i32*, %struct.TYPE_18__*, i32**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
