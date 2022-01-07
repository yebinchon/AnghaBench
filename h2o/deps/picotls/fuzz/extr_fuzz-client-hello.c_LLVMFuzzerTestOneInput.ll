; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/fuzz/extr_fuzz-client-hello.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/fuzz/extr_fuzz-client-hello.c_LLVMFuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_9__*, i32, i32*, i32**, i32**, i32*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.st_util_session_cache_t = type { %struct.TYPE_9__ }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }

@ptls_openssl_secp256r1 = common dso_local global i32 0, align 4
@ptls_openssl_aes128gcmsha256 = common dso_local global i32 0, align 4
@ptls_openssl_aes256gcmsha384 = common dso_local global i32 0, align 4
@__const.LLVMFuzzerTestOneInput.cipher_suites = private unnamed_addr constant [3 x i32*] [i32* @ptls_openssl_aes128gcmsha256, i32* @ptls_openssl_aes256gcmsha384, i32* null], align 16
@deterministic_random_bytes = common dso_local global i32 0, align 4
@ptls_get_time = common dso_local global i32 0, align 4
@encrypt_ticket_cb_fake = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [128 x i32*], align 16
  %6 = alloca [3 x i32*], align 16
  %7 = alloca %struct.TYPE_14__, align 8
  %8 = alloca %struct.st_util_session_cache_t, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %14 = bitcast [128 x i32*]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 1024, i1 false)
  %15 = getelementptr inbounds [128 x i32*], [128 x i32*]* %5, i64 0, i64 0
  store i32* @ptls_openssl_secp256r1, i32** %15, align 16
  %16 = bitcast [3 x i32*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([3 x i32*]* @__const.LLVMFuzzerTestOneInput.cipher_suites to i8*), i64 24, i1 false)
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %18 = load i32, i32* @deterministic_random_bytes, align 4
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  store %struct.TYPE_9__* bitcast (i32* @ptls_get_time to %struct.TYPE_9__*), %struct.TYPE_9__** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 2
  %21 = getelementptr inbounds [128 x i32*], [128 x i32*]* %5, i64 0, i64 0
  %22 = ptrtoint i32** %21 to i32
  store i32 %22, i32* %20, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 3
  %24 = getelementptr inbounds [3 x i32*], [3 x i32*]* %6, i64 0, i64 0
  %25 = bitcast i32** %24 to i32*
  store i32* %25, i32** %23, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 4
  store i32** null, i32*** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 5
  store i32** null, i32*** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 6
  store i32* null, i32** %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 7
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 3
  store i32* null, i32** %30, align 8
  %31 = load i32, i32* @encrypt_ticket_cb_fake, align 4
  %32 = getelementptr inbounds %struct.st_util_session_cache_t, %struct.st_util_session_cache_t* %8, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @UINT_MAX, align 4
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 2
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  store i32 8192, i32* %36, align 8
  %37 = getelementptr inbounds %struct.st_util_session_cache_t, %struct.st_util_session_cache_t* %8, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %38, align 8
  %39 = call i32* @ptls_new(%struct.TYPE_14__* %7, i32 1)
  store i32* %39, i32** %9, align 8
  %40 = bitcast %struct.TYPE_13__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %40, i8 0, i64 8, i1 false)
  %41 = call i32 @ptls_buffer_init(i32* %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  %42 = load i64, i64* %4, align 8
  store i64 %42, i64* %12, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @ptls_handshake(i32* %43, i32* %11, i32* %44, i64* %12, %struct.TYPE_13__* %10)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %2
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* %12, align 8
  %51 = sub i64 %49, %50
  %52 = icmp ugt i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = load i64, i64* %4, align 8
  %55 = load i64, i64* %12, align 8
  %56 = sub i64 %54, %55
  store i64 %56, i64* %4, align 8
  %57 = call i32 @ptls_buffer_dispose(i32* %11)
  %58 = call i32 @ptls_buffer_init(i32* %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  %59 = load i32*, i32** %9, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = load i64, i64* %12, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = call i32 @ptls_receive(i32* %59, i32* %11, i32* %62, i64* %4)
  br label %64

64:                                               ; preds = %53, %48, %2
  %65 = call i32 @ptls_buffer_dispose(i32* %11)
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @ptls_free(i32* %66)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @ptls_new(%struct.TYPE_14__*, i32) #2

declare dso_local i32 @ptls_buffer_init(i32*, i8*, i32) #2

declare dso_local i32 @ptls_handshake(i32*, i32*, i32*, i64*, %struct.TYPE_13__*) #2

declare dso_local i32 @ptls_buffer_dispose(i32*) #2

declare dso_local i32 @ptls_receive(i32*, i32*, i32*, i64*) #2

declare dso_local i32 @ptls_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
