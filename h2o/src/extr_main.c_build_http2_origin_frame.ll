; ModuleID = '/home/carl/AnghaBench/h2o/src/extr_main.c_build_http2_origin_frame.c'
source_filename = "/home/carl/AnghaBench/h2o/src/extr_main.c_build_http2_origin_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8* }

@YOML_TYPE_SCALAR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [68 x i8] c"element of a sequence passed to http2-origin-frame must be a scalar\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i32*, %struct.TYPE_12__**, i64)* @build_http2_origin_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @build_http2_origin_frame(i32* %0, %struct.TYPE_12__** %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_13__, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_12__** %1, %struct.TYPE_12__*** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = call %struct.TYPE_13__* @h2o_mem_alloc(i32 16)
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %9, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load i64, i64* %7, align 8
  %22 = mul i64 %21, 2
  %23 = alloca %struct.TYPE_13__, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  store i64 0, i64* %8, align 8
  br label %24

24:                                               ; preds = %95, %3
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %98

28:                                               ; preds = %24
  %29 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %29, i64 %30
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %13, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @YOML_TYPE_SCALAR, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %28
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %41 = call i32 @h2o_configurator_errprintf(i32* %39, %struct.TYPE_12__* %40, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %43 = call i32 @free(%struct.TYPE_13__* %42)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  store i32 1, i32* %14, align 4
  br label %111

44:                                               ; preds = %28
  %45 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %45, i64 %46
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @strlen(i8* %51)
  store i64 %52, i64* %15, align 8
  %53 = load i64, i64* %15, align 8
  %54 = call i32 @htons(i64 %53)
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds i32, i32* %20, i64 %55
  store i32 %54, i32* %56, align 4
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds i32, i32* %20, i64 %57
  %59 = bitcast i32* %58 to i8*
  %60 = load i64, i64* %8, align 8
  %61 = mul i64 %60, 2
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  store i8* %59, i8** %63, align 16
  %64 = load i64, i64* %8, align 8
  %65 = mul i64 %64, 2
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  store i32 2, i32* %67, align 8
  %68 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %68, i64 %69
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i64, i64* %8, align 8
  %76 = mul i64 %75, 2
  %77 = add i64 %76, 1
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  store i8* %74, i8** %79, align 16
  %80 = load i64, i64* %15, align 8
  %81 = trunc i64 %80 to i32
  %82 = load i64, i64* %8, align 8
  %83 = mul i64 %82, 2
  %84 = add i64 %83, 1
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  store i32 %81, i32* %86, align 8
  %87 = load i64, i64* %8, align 8
  %88 = mul i64 %87, 2
  %89 = add i64 %88, 1
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 16
  %93 = load i64, i64* %15, align 8
  %94 = call i32 @h2o_strtolower(i8* %92, i64 %93)
  br label %95

95:                                               ; preds = %44
  %96 = load i64, i64* %8, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %8, align 8
  br label %24

98:                                               ; preds = %24
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %100 = load i64, i64* %7, align 8
  %101 = mul i64 %100, 2
  %102 = call { i8*, i32 } @h2o_concat_list(i32* null, %struct.TYPE_13__* %23, i64 %101)
  %103 = bitcast %struct.TYPE_13__* %16 to { i8*, i32 }*
  %104 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %103, i32 0, i32 0
  %105 = extractvalue { i8*, i32 } %102, 0
  store i8* %105, i8** %104, align 8
  %106 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %103, i32 0, i32 1
  %107 = extractvalue { i8*, i32 } %102, 1
  store i32 %107, i32* %106, align 8
  %108 = bitcast %struct.TYPE_13__* %99 to i8*
  %109 = bitcast %struct.TYPE_13__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %108, i8* align 8 %109, i64 16, i1 false)
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %110, %struct.TYPE_13__** %4, align 8
  store i32 1, i32* %14, align 4
  br label %111

111:                                              ; preds = %98, %38
  %112 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  ret %struct.TYPE_13__* %113
}

declare dso_local %struct.TYPE_13__* @h2o_mem_alloc(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @h2o_configurator_errprintf(i32*, %struct.TYPE_12__*, i8*) #1

declare dso_local i32 @free(%struct.TYPE_13__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @h2o_strtolower(i8*, i64) #1

declare dso_local { i8*, i32 } @h2o_concat_list(i32*, %struct.TYPE_13__*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
