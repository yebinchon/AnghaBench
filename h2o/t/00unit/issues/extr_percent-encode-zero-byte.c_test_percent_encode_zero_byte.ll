; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/issues/extr_percent-encode-zero-byte.c_test_percent_encode_zero_byte.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/issues/extr_percent-encode-zero-byte.c_test_percent_encode_zero_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_15__, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"/abc\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"/abc/mno\00xyz\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"?q\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"/def\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"/def/mno%00xyz?q\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"/def/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_percent_encode_zero_byte() #0 {
  %1 = alloca %struct.TYPE_13__, align 8
  %2 = alloca %struct.TYPE_12__, align 8
  %3 = alloca %struct.TYPE_14__, align 4
  %4 = alloca %struct.TYPE_15__, align 4
  %5 = alloca %struct.TYPE_15__, align 4
  %6 = alloca %struct.TYPE_14__, align 4
  %7 = alloca %struct.TYPE_14__, align 4
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1, i32 0, i32 1
  %11 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %10, align 8
  %14 = call i32 @h2o_init_request(%struct.TYPE_12__* %2, i32* null, i32* null)
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 2
  %16 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @h2o_iovec_init(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = bitcast %struct.TYPE_15__* %15 to i8*
  %20 = bitcast %struct.TYPE_15__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 4 %20, i64 4, i1 false)
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 4
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 2
  %27 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %28 = call i32 @h2o_iovec_init(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @h2o_concat(i32* %25, i32 %31, i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 3
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %36, align 8
  %37 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %38 = call i64 @h2o_build_destination(%struct.TYPE_12__* %2, i32 %37, i32 1)
  %39 = bitcast %struct.TYPE_14__* %6 to i64*
  store i64 %38, i64* %39, align 4
  %40 = bitcast %struct.TYPE_14__* %3 to i8*
  %41 = bitcast %struct.TYPE_14__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 8, i1 false)
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %47 = call i32 @h2o_memis(i32 %43, i32 %45, i32 %46)
  %48 = call i32 @ok(i32 %47)
  %49 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %50 = call i64 @h2o_build_destination(%struct.TYPE_12__* %2, i32 %49, i32 1)
  %51 = bitcast %struct.TYPE_14__* %7 to i64*
  store i64 %50, i64* %51, align 4
  %52 = bitcast %struct.TYPE_14__* %3 to i8*
  %53 = bitcast %struct.TYPE_14__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 8, i1 false)
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %59 = call i32 @h2o_memis(i32 %55, i32 %57, i32 %58)
  %60 = call i32 @ok(i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  %62 = call i32 @h2o_mem_clear_pool(i32* %61)
  ret void
}

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32 @h2o_init_request(%struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @h2o_iovec_init(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @h2o_concat(i32*, i32, i32) #1

declare dso_local i64 @h2o_build_destination(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @h2o_memis(i32, i32, i32) #1

declare dso_local i32 @h2o_mem_clear_pool(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
