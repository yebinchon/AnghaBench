; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_openssl.c_aead_do_encrypt_init.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_openssl.c_aead_do_encrypt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_crypto_context_t = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i64)* @aead_do_encrypt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aead_do_encrypt_init(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.aead_crypto_context_t*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = bitcast i32* %12 to %struct.aead_crypto_context_t*
  store %struct.aead_crypto_context_t* %13, %struct.aead_crypto_context_t** %9, align 8
  %14 = load %struct.aead_crypto_context_t*, %struct.aead_crypto_context_t** %9, align 8
  %15 = getelementptr inbounds %struct.aead_crypto_context_t, %struct.aead_crypto_context_t* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @EVP_EncryptInit_ex(i32 %16, i32* null, i32* null, i32* null, i8* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @assert(i32 %19)
  %21 = load i64, i64* %8, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %4
  %24 = load %struct.aead_crypto_context_t*, %struct.aead_crypto_context_t** %9, align 8
  %25 = getelementptr inbounds %struct.aead_crypto_context_t, %struct.aead_crypto_context_t* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @EVP_EncryptUpdate(i32 %26, i32* null, i32* %11, i8* %27, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @assert(i32 %31)
  br label %33

33:                                               ; preds = %23, %4
  ret void
}

declare dso_local i32 @EVP_EncryptInit_ex(i32, i32*, i32*, i32*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @EVP_EncryptUpdate(i32, i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
