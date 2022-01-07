; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_file.c_test_if_match.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_file.c_test_if_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32, i32* }
%struct.TYPE_26__ = type { %struct.TYPE_25__*, %struct.TYPE_24__ }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_24__ = type { %struct.TYPE_23__, i32, i32, %struct.TYPE_22__ }
%struct.TYPE_23__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_22__ = type { i8*, i8* }

@ctx = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@H2O_TOKEN_ETAG = common dso_local global i32 0, align 4
@H2O_TOKEN_IF_NONE_MATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_if_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_if_match() #0 {
  %1 = alloca %struct.TYPE_27__, align 8
  %2 = alloca %struct.TYPE_26__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_27__, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = bitcast %struct.TYPE_27__* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 16, i1 false)
  %7 = load %struct.TYPE_21__*, %struct.TYPE_21__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ctx, i32 0, i32 0), align 8
  %8 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.TYPE_26__* @h2o_loopback_create(%struct.TYPE_17__* @ctx, i32 %9)
  store %struct.TYPE_26__* %10, %struct.TYPE_26__** %2, align 8
  %11 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %12 = call i8* @h2o_iovec_init(i32 %11)
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 1
  store i8* %12, i8** %16, align 8
  %17 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i8* @h2o_iovec_init(i32 %17)
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  store i8* %18, i8** %22, align 8
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %24 = call i32 @h2o_loopback_run_loop(%struct.TYPE_26__* %23)
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 200
  %31 = zext i1 %30 to i32
  %32 = call i32 @ok(i32 %31)
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 1
  %37 = load i32, i32* @H2O_TOKEN_ETAG, align 4
  %38 = call i32 @h2o_find_header(%struct.TYPE_18__* %36, i32 %37, i32 -1)
  store i32 %38, i32* %3, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %0
  %41 = call i32 @ok(i32 0)
  br label %128

42:                                               ; preds = %0
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call { i64, i32* } @h2o_strdup(i32* null, i32 %54, i32 %66)
  %68 = bitcast %struct.TYPE_27__* %4 to { i64, i32* }*
  %69 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %68, i32 0, i32 0
  %70 = extractvalue { i64, i32* } %67, 0
  store i64 %70, i64* %69, align 8
  %71 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %68, i32 0, i32 1
  %72 = extractvalue { i64, i32* } %67, 1
  store i32* %72, i32** %71, align 8
  %73 = bitcast %struct.TYPE_27__* %1 to i8*
  %74 = bitcast %struct.TYPE_27__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 16, i1 false)
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %76 = call i32 @h2o_loopback_destroy(%struct.TYPE_26__* %75)
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ctx, i32 0, i32 0), align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call %struct.TYPE_26__* @h2o_loopback_create(%struct.TYPE_17__* @ctx, i32 %79)
  store %struct.TYPE_26__* %80, %struct.TYPE_26__** %5, align 8
  %81 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %82 = call i8* @h2o_iovec_init(i32 %81)
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 1
  store i8* %82, i8** %86, align 8
  %87 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %88 = call i8* @h2o_iovec_init(i32 %87)
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 0
  store i8* %88, i8** %92, align 8
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 1
  %99 = load i32, i32* @H2O_TOKEN_IF_NONE_MATCH, align 4
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %1, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %1, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @h2o_add_header(i32* %95, i32* %98, i32 %99, i32* null, i32 %101, i32 %103)
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %106 = call i32 @h2o_loopback_run_loop(%struct.TYPE_26__* %105)
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 304
  %113 = zext i1 %112 to i32
  %114 = call i32 @ok(i32 %113)
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %119, 0
  %121 = zext i1 %120 to i32
  %122 = call i32 @ok(i32 %121)
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %124 = call i32 @h2o_loopback_destroy(%struct.TYPE_26__* %123)
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %1, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @free(i32 %126)
  br label %128

128:                                              ; preds = %42, %40
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_26__* @h2o_loopback_create(%struct.TYPE_17__*, i32) #2

declare dso_local i8* @h2o_iovec_init(i32) #2

declare dso_local i32 @H2O_STRLIT(i8*) #2

declare dso_local i32 @h2o_loopback_run_loop(%struct.TYPE_26__*) #2

declare dso_local i32 @ok(i32) #2

declare dso_local i32 @h2o_find_header(%struct.TYPE_18__*, i32, i32) #2

declare dso_local { i64, i32* } @h2o_strdup(i32*, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @h2o_loopback_destroy(%struct.TYPE_26__*) #2

declare dso_local i32 @h2o_add_header(i32*, i32*, i32, i32*, i32, i32) #2

declare dso_local i32 @free(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
