; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_hpack.c_test_token_wo_hpack_id.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_hpack.c_test_token_wo_hpack_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_14__ = type { i32, i8*, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, i64 }

@h2o_socket_buffer_prototype = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@H2O_TOKEN_TE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@H2O_HTTP2_SETTINGS_DEFAULT = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@SIZE_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"\88@\02te\83IP\9F\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\88\BE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_token_wo_hpack_id() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_15__, align 8
  %3 = alloca %struct.TYPE_14__, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = call i32 @h2o_mem_init_pool(i32* %1)
  %6 = bitcast %struct.TYPE_15__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 16, i1 false)
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 0
  store i32 4096, i32* %7, align 8
  %8 = bitcast %struct.TYPE_14__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 32, i1 false)
  %9 = call i32 @h2o_buffer_init(%struct.TYPE_16__** %4, i32* @h2o_socket_buffer_prototype)
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  store i32 200, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 2
  %13 = load i32, i32* @H2O_TOKEN_TE, align 4
  %14 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @h2o_add_header(i32* %1, %struct.TYPE_12__* %12, i32 %13, i32* null, i32 %14)
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @H2O_HTTP2_SETTINGS_DEFAULT, i32 0, i32 0), align 4
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SIZE_MAX, align 4
  %26 = call i32 @h2o_hpack_flatten_response(%struct.TYPE_16__** %4, %struct.TYPE_15__* %2, i32 1, i32 %16, i32 %18, i32 %21, i32 %24, i32* null, i32 %25)
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 9
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %33, 9
  %35 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %36 = call i32 @h2o_memis(i64 %30, i64 %34, i32 %35)
  %37 = call i32 @ok(i32 %36)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @h2o_buffer_consume(%struct.TYPE_16__** %4, i64 %40)
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @H2O_HTTP2_SETTINGS_DEFAULT, i32 0, i32 0), align 4
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SIZE_MAX, align 4
  %52 = call i32 @h2o_hpack_flatten_response(%struct.TYPE_16__** %4, %struct.TYPE_15__* %2, i32 1, i32 %42, i32 %44, i32 %47, i32 %50, i32* null, i32 %51)
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 9
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %59, 9
  %61 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %62 = call i32 @h2o_memis(i64 %56, i64 %60, i32 %61)
  %63 = call i32 @ok(i32 %62)
  %64 = call i32 @h2o_buffer_dispose(%struct.TYPE_16__** %4)
  %65 = call i32 @h2o_hpack_dispose_header_table(%struct.TYPE_15__* %2)
  %66 = call i32 @h2o_mem_clear_pool(i32* %1)
  ret void
}

declare dso_local i32 @h2o_mem_init_pool(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @h2o_buffer_init(%struct.TYPE_16__**, i32*) #1

declare dso_local i32 @h2o_add_header(i32*, %struct.TYPE_12__*, i32, i32*, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32 @h2o_hpack_flatten_response(%struct.TYPE_16__**, %struct.TYPE_15__*, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @h2o_memis(i64, i64, i32) #1

declare dso_local i32 @h2o_buffer_consume(%struct.TYPE_16__**, i64) #1

declare dso_local i32 @h2o_buffer_dispose(%struct.TYPE_16__**) #1

declare dso_local i32 @h2o_hpack_dispose_header_table(%struct.TYPE_15__*) #1

declare dso_local i32 @h2o_mem_clear_pool(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
