; ModuleID = '/home/carl/AnghaBench/h2o/src/extr_main.c_resolve_file_tag.c'
source_filename = "/home/carl/AnghaBench/h2o/src/extr_main.c_resolve_file_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_22__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_19__*, i32, %struct.TYPE_19__*, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i8*, %struct.TYPE_18__, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_22__*, i32 }

@YOML_TYPE_SCALAR = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"value of the !file node must be a scalar\00", align 1
@resolve_tag = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (%struct.TYPE_19__*, %struct.TYPE_22__*)* @resolve_file_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @resolve_file_tag(%struct.TYPE_19__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_20__, align 8
  %11 = alloca %struct.TYPE_21__, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @YOML_TYPE_SCALAR, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %3, align 8
  br label %111

20:                                               ; preds = %2
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %8, align 8
  store i64 0, i64* %6, align 8
  br label %25

25:                                               ; preds = %57, %20
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %26, %30
  br i1 %31, label %32, label %60

32:                                               ; preds = %25
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i64 %37
  store %struct.TYPE_21__* %38, %struct.TYPE_21__** %9, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @strcmp(i8* %39, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %32
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %54, align 8
  store %struct.TYPE_19__* %55, %struct.TYPE_19__** %3, align 8
  br label %111

56:                                               ; preds = %32
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %6, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %6, align 8
  br label %25

60:                                               ; preds = %25
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %62 = load i8*, i8** %8, align 8
  store i8* %62, i8** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 1
  %66 = load i32, i32* @resolve_tag, align 4
  store i32 %66, i32* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 2
  store i32* null, i32** %67, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %69 = call %struct.TYPE_19__* @load_config(%struct.TYPE_20__* %10, %struct.TYPE_19__* %68)
  store %struct.TYPE_19__* %69, %struct.TYPE_19__** %7, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %71 = icmp ne %struct.TYPE_19__* %70, null
  br i1 %71, label %72, label %109

72:                                               ; preds = %60
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, 1
  %80 = call i32 @h2o_vector_reserve(i32* null, %struct.TYPE_15__* %74, i64 %79)
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %82 = load i8*, i8** %8, align 8
  %83 = load i32, i32* @SIZE_MAX, align 4
  %84 = call i32 @h2o_strdup(i32* null, i8* %82, i32 %83)
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %86, %struct.TYPE_19__** %81, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 1
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %89 = ptrtoint %struct.TYPE_19__* %88 to i32
  store i32 %89, i32* %87, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 2
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %90, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 3
  %92 = bitcast %struct.TYPE_17__* %91 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %92, i8 0, i64 4, i1 false)
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %95, align 8
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %99, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i64 %100
  %103 = bitcast %struct.TYPE_21__* %102 to i8*
  %104 = bitcast %struct.TYPE_21__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 8 %104, i64 32, i1 false)
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %72, %60
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_19__* %110, %struct.TYPE_19__** %3, align 8
  br label %111

111:                                              ; preds = %109, %46, %17
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  ret %struct.TYPE_19__* %112
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local %struct.TYPE_19__* @load_config(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @h2o_vector_reserve(i32*, %struct.TYPE_15__*, i64) #1

declare dso_local i32 @h2o_strdup(i32*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
