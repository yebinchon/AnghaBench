; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/src/extr_......srcssl.c_init_keyset.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/src/extr_......srcssl.c_init_keyset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.st_quic_keyset_t = type { %struct.TYPE_10__, i32*, i32 }
%struct.TYPE_10__ = type { i32*, i32* }
%struct.TYPE_11__ = type { i32, i32 }

@PTLS_MAX_DIGEST_SIZE = common dso_local global i32 0, align 4
@PTLS_MAX_SECRET_SIZE = common dso_local global i32 0, align 4
@PTLS_SHA256_DIGEST_SIZE = common dso_local global i32 0, align 4
@ptls_openssl_sha256 = common dso_local global i32 0, align 4
@ptls_openssl_bfecb = common dso_local global i32 0, align 4
@ptls_openssl_aes128ecb = common dso_local global i32 0, align 4
@ptls_openssl_aes128gcm = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str = private unnamed_addr constant [14 x i8] c"address-token\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_quic_keyset_t*, i32, i64)* @init_keyset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_keyset(%struct.st_quic_keyset_t* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_11__, align 4
  %5 = alloca %struct.st_quic_keyset_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__, align 4
  %12 = alloca %struct.TYPE_11__, align 4
  %13 = bitcast %struct.TYPE_11__* %4 to i64*
  store i64 %2, i64* %13, align 4
  store %struct.st_quic_keyset_t* %0, %struct.st_quic_keyset_t** %5, align 8
  store i32 %1, i32* %6, align 4
  %14 = load i32, i32* @PTLS_MAX_DIGEST_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i32, i32* @PTLS_MAX_SECRET_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PTLS_SHA256_DIGEST_SIZE, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ptls_calc_hash(i32* @ptls_openssl_sha256, i32* %17, i32 %27, i32 %29)
  %31 = load i32, i32* @PTLS_SHA256_DIGEST_SIZE, align 4
  %32 = call i64 @ptls_iovec_init(i32* %17, i32 %31)
  %33 = bitcast %struct.TYPE_11__* %11 to i64*
  store i64 %32, i64* %33, align 4
  %34 = bitcast %struct.TYPE_11__* %4 to i8*
  %35 = bitcast %struct.TYPE_11__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 8, i1 false)
  br label %36

36:                                               ; preds = %25, %3
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.st_quic_keyset_t*, %struct.st_quic_keyset_t** %5, align 8
  %39 = getelementptr inbounds %struct.st_quic_keyset_t, %struct.st_quic_keyset_t* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = bitcast %struct.TYPE_11__* %4 to i64*
  %41 = load i64, i64* %40, align 4
  %42 = call i32* @quicly_new_default_cid_encryptor(i32* @ptls_openssl_bfecb, i32* @ptls_openssl_aes128ecb, i32* @ptls_openssl_sha256, i64 %41)
  %43 = load %struct.st_quic_keyset_t*, %struct.st_quic_keyset_t** %5, align 8
  %44 = getelementptr inbounds %struct.st_quic_keyset_t, %struct.st_quic_keyset_t* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  %45 = load %struct.st_quic_keyset_t*, %struct.st_quic_keyset_t** %5, align 8
  %46 = getelementptr inbounds %struct.st_quic_keyset_t, %struct.st_quic_keyset_t* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ptls_openssl_aes128gcm, i32 0, i32 0), align 4
  %52 = call i64 @ptls_iovec_init(i32* null, i32 0)
  %53 = bitcast %struct.TYPE_11__* %12 to i64*
  store i64 %52, i64* %53, align 4
  %54 = bitcast %struct.TYPE_11__* %4 to i64*
  %55 = load i64, i64* %54, align 4
  %56 = bitcast %struct.TYPE_11__* %12 to i64*
  %57 = load i64, i64* %56, align 4
  %58 = call i32 @ptls_hkdf_expand_label(i32* @ptls_openssl_sha256, i32* %20, i32 %51, i64 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %57, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = call i8* @ptls_aead_new(%struct.TYPE_12__* @ptls_openssl_aes128gcm, i32* @ptls_openssl_sha256, i32 1, i32* %20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %64 = bitcast i8* %63 to i32*
  %65 = load %struct.st_quic_keyset_t*, %struct.st_quic_keyset_t** %5, align 8
  %66 = getelementptr inbounds %struct.st_quic_keyset_t, %struct.st_quic_keyset_t* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  store i32* %64, i32** %67, align 8
  %68 = load %struct.st_quic_keyset_t*, %struct.st_quic_keyset_t** %5, align 8
  %69 = getelementptr inbounds %struct.st_quic_keyset_t, %struct.st_quic_keyset_t* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = call i8* @ptls_aead_new(%struct.TYPE_12__* @ptls_openssl_aes128gcm, i32* @ptls_openssl_sha256, i32 0, i32* %20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %76 = bitcast i8* %75 to i32*
  %77 = load %struct.st_quic_keyset_t*, %struct.st_quic_keyset_t** %5, align 8
  %78 = getelementptr inbounds %struct.st_quic_keyset_t, %struct.st_quic_keyset_t* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  store i32* %76, i32** %79, align 8
  %80 = load %struct.st_quic_keyset_t*, %struct.st_quic_keyset_t** %5, align 8
  %81 = getelementptr inbounds %struct.st_quic_keyset_t, %struct.st_quic_keyset_t* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = mul nuw i64 4, %15
  %88 = trunc i64 %87 to i32
  %89 = call i32 @ptls_clear_memory(i32* %17, i32 %88)
  %90 = mul nuw i64 4, %19
  %91 = trunc i64 %90 to i32
  %92 = call i32 @ptls_clear_memory(i32* %20, i32 %91)
  %93 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %93)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ptls_calc_hash(i32*, i32*, i32, i32) #2

declare dso_local i64 @ptls_iovec_init(i32*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32* @quicly_new_default_cid_encryptor(i32*, i32*, i32*, i64) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @ptls_hkdf_expand_label(i32*, i32*, i32, i64, i8*, i64, i8*) #2

declare dso_local i8* @ptls_aead_new(%struct.TYPE_12__*, i32*, i32, i32*, i8*) #2

declare dso_local i32 @ptls_clear_memory(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
