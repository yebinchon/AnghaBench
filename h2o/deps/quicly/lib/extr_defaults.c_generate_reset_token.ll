; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_defaults.c_generate_reset_token.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_defaults.c_generate_reset_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_quicly_default_encrypt_cid_t = type { %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@QUICLY_STATELESS_RESET_TOKEN_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_quicly_default_encrypt_cid_t*, i8*, i8*)* @generate_reset_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_reset_token(%struct.st_quicly_default_encrypt_cid_t* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.st_quicly_default_encrypt_cid_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.st_quicly_default_encrypt_cid_t* %0, %struct.st_quicly_default_encrypt_cid_t** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* @QUICLY_STATELESS_RESET_TOKEN_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %7, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %8, align 8
  %13 = load %struct.st_quicly_default_encrypt_cid_t*, %struct.st_quicly_default_encrypt_cid_t** %4, align 8
  %14 = getelementptr inbounds %struct.st_quicly_default_encrypt_cid_t, %struct.st_quicly_default_encrypt_cid_t* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @QUICLY_STATELESS_RESET_TOKEN_LEN, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.st_quicly_default_encrypt_cid_t*, %struct.st_quicly_default_encrypt_cid_t** %4, align 8
  %25 = getelementptr inbounds %struct.st_quicly_default_encrypt_cid_t, %struct.st_quicly_default_encrypt_cid_t* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @QUICLY_STATELESS_RESET_TOKEN_LEN, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %3
  %34 = load %struct.st_quicly_default_encrypt_cid_t*, %struct.st_quicly_default_encrypt_cid_t** %4, align 8
  %35 = getelementptr inbounds %struct.st_quicly_default_encrypt_cid_t, %struct.st_quicly_default_encrypt_cid_t* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @QUICLY_STATELESS_RESET_TOKEN_LEN, align 4
  %42 = icmp slt i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = mul nuw i64 4, %10
  %46 = trunc i64 %45 to i32
  %47 = call i32 @memset(i32* %12, i32 0, i32 %46)
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.st_quicly_default_encrypt_cid_t*, %struct.st_quicly_default_encrypt_cid_t** %4, align 8
  %50 = getelementptr inbounds %struct.st_quicly_default_encrypt_cid_t, %struct.st_quicly_default_encrypt_cid_t* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @memcpy(i32* %12, i8* %48, i32 %55)
  %57 = bitcast i32* %12 to i8*
  store i8* %57, i8** %6, align 8
  br label %58

58:                                               ; preds = %33, %3
  %59 = load %struct.st_quicly_default_encrypt_cid_t*, %struct.st_quicly_default_encrypt_cid_t** %4, align 8
  %60 = getelementptr inbounds %struct.st_quicly_default_encrypt_cid_t, %struct.st_quicly_default_encrypt_cid_t* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* @QUICLY_STATELESS_RESET_TOKEN_LEN, align 4
  %65 = call i32 @ptls_cipher_encrypt(%struct.TYPE_8__* %61, i8* %62, i8* %63, i32 %64)
  %66 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %66)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

declare dso_local i32 @ptls_cipher_encrypt(%struct.TYPE_8__*, i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
