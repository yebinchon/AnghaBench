; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_test_stateless_hrr_aad_change.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_test_stateless_hrr_aad_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_14__ }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i8*, i8* }
%struct.TYPE_14__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_20__ = type { i64, i32 }

@.str = private unnamed_addr constant [49 x i8] c"0123456789abcdef0123456789abcdef0123456789abcdef\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"1.2.3.4:1234\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PTLS_ERROR_IN_PROGRESS = common dso_local global i32 0, align 4
@ctx_peer = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"1.2.3.4:4321\00", align 1
@PTLS_ALERT_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_stateless_hrr_aad_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_stateless_hrr_aad_change() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_19__, align 8
  %4 = alloca %struct.TYPE_20__, align 8
  %5 = alloca %struct.TYPE_20__, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = bitcast %struct.TYPE_19__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 32, i1 false)
  %9 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = call i8* @ptls_iovec_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 12)
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  store i8* %12, i8** %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 1
  store i32 1, i32* %19, align 4
  %20 = call i32* @stateless_hrr_prepare(%struct.TYPE_20__* %5, %struct.TYPE_19__* %3)
  store i32* %20, i32** %1, align 8
  %21 = call i32 @ptls_buffer_init(%struct.TYPE_20__* %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  %24 = load i32*, i32** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ptls_handshake(i32* %24, %struct.TYPE_20__* %4, i32 %26, i64* %6, %struct.TYPE_19__* null)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @PTLS_ERROR_IN_PROGRESS, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @ok(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @ok(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @ctx_peer, align 4
  %41 = call i32* @ptls_new(i32 %40, i32 1)
  store i32* %41, i32** %2, align 8
  %42 = call i8* @ptls_iovec_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 12)
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  store i8* %42, i8** %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %6, align 8
  %48 = load i32*, i32** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ptls_handshake(i32* %48, %struct.TYPE_20__* %5, i32 %50, i64* %6, %struct.TYPE_19__* %3)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @PTLS_ALERT_HANDSHAKE_FAILURE, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @ok(i32 %55)
  %57 = load i32*, i32** %1, align 8
  %58 = call i32 @ptls_free(i32* %57)
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @ptls_free(i32* %59)
  %61 = call i32 @ptls_buffer_dispose(%struct.TYPE_20__* %4)
  %62 = call i32 @ptls_buffer_dispose(%struct.TYPE_20__* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @ptls_iovec_init(i8*, i32) #2

declare dso_local i32* @stateless_hrr_prepare(%struct.TYPE_20__*, %struct.TYPE_19__*) #2

declare dso_local i32 @ptls_buffer_init(%struct.TYPE_20__*, i8*, i32) #2

declare dso_local i32 @ptls_handshake(i32*, %struct.TYPE_20__*, i32, i64*, %struct.TYPE_19__*) #2

declare dso_local i32 @ok(i32) #2

declare dso_local i32* @ptls_new(i32, i32) #2

declare dso_local i32 @ptls_free(i32*) #2

declare dso_local i32 @ptls_buffer_dispose(%struct.TYPE_20__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
