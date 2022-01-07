; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/fuzz/extr_fuzz-server-hello.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/fuzz/extr_fuzz-server-hello.c_LLVMFuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_util_save_ticket_t = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_9__*, i32*, i32**, i32**, i32*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }

@ptls_openssl_secp256r1 = common dso_local global i32 0, align 4
@ptls_openssl_aes128gcmsha256 = common dso_local global i32 0, align 4
@__const.LLVMFuzzerTestOneInput.cipher_suites = private unnamed_addr constant [2 x i32*] [i32* @ptls_openssl_aes128gcmsha256, i32* null], align 16
@deterministic_random_bytes = common dso_local global i32 0, align 4
@ptls_get_time = common dso_local global i32 0, align 4
@LLVMFuzzerTestOneInput.st = internal global %struct.st_util_save_ticket_t zeroinitializer, align 4
@fake_ticket_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [128 x i32*], align 16
  %6 = alloca [2 x i32*], align 16
  %7 = alloca %struct.TYPE_14__, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = bitcast [128 x i32*]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 1024, i1 false)
  %14 = getelementptr inbounds [128 x i32*], [128 x i32*]* %5, i64 0, i64 0
  store i32* @ptls_openssl_secp256r1, i32** %14, align 16
  %15 = bitcast [2 x i32*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([2 x i32*]* @__const.LLVMFuzzerTestOneInput.cipher_suites to i8*), i64 16, i1 false)
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %17 = load i32, i32* @deterministic_random_bytes, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %16, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  store i32* @ptls_get_time, i32** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 2
  %22 = getelementptr inbounds [128 x i32*], [128 x i32*]* %5, i64 0, i64 0
  store i32** %22, i32*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 3
  %24 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0
  store i32** %24, i32*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 4
  store i32* null, i32** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 5
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = call i32* @ptls_new(%struct.TYPE_14__* %7, i32 0)
  store i32* %28, i32** %8, align 8
  %29 = load i32, i32* @fake_ticket_cb, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.st_util_save_ticket_t, %struct.st_util_save_ticket_t* @LLVMFuzzerTestOneInput.st, i32 0, i32 0, i32 0), align 4
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  store %struct.TYPE_9__* getelementptr inbounds (%struct.st_util_save_ticket_t, %struct.st_util_save_ticket_t* @LLVMFuzzerTestOneInput.st, i32 0, i32 0), %struct.TYPE_9__** %30, align 8
  %31 = bitcast %struct.TYPE_13__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 8, i1 false)
  %32 = call i32 @ptls_buffer_init(i32* %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @ptls_handshake(i32* %33, i32* %10, i32* null, i64* null, %struct.TYPE_13__* %9)
  %35 = call i32 @ptls_buffer_dispose(i32* %10)
  %36 = call i32 @ptls_buffer_init(i32* %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  %37 = load i64, i64* %4, align 8
  store i64 %37, i64* %11, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @ptls_handshake(i32* %38, i32* %10, i32* %39, i64* %11, %struct.TYPE_13__* %9)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %2
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* %11, align 8
  %46 = sub i64 %44, %45
  %47 = icmp ugt i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* %11, align 8
  %51 = sub i64 %49, %50
  store i64 %51, i64* %4, align 8
  %52 = call i32 @ptls_buffer_dispose(i32* %10)
  %53 = call i32 @ptls_buffer_init(i32* %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  %54 = load i32*, i32** %8, align 8
  %55 = load i32*, i32** %3, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = call i32 @ptls_receive(i32* %54, i32* %10, i32* %57, i64* %4)
  br label %59

59:                                               ; preds = %48, %43, %2
  %60 = call i32 @ptls_buffer_dispose(i32* %10)
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @ptls_free(i32* %61)
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
