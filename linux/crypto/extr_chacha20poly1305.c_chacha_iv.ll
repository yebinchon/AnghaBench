; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_chacha20poly1305.c_chacha_iv.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_chacha20poly1305.c_chacha_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32* }
%struct.chachapoly_ctx = type { i32, i32* }

@CHACHA_IV_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.aead_request*, i32)* @chacha_iv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chacha_iv(i32* %0, %struct.aead_request* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.chachapoly_ctx*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.aead_request* %1, %struct.aead_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %10 = call i32 @crypto_aead_reqtfm(%struct.aead_request* %9)
  %11 = call %struct.chachapoly_ctx* @crypto_aead_ctx(i32 %10)
  store %struct.chachapoly_ctx* %11, %struct.chachapoly_ctx** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @cpu_to_le32(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @memcpy(i32* %14, i32* %8, i32 4)
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 4
  %18 = load %struct.chachapoly_ctx*, %struct.chachapoly_ctx** %7, align 8
  %19 = getelementptr inbounds %struct.chachapoly_ctx, %struct.chachapoly_ctx* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.chachapoly_ctx*, %struct.chachapoly_ctx** %7, align 8
  %22 = getelementptr inbounds %struct.chachapoly_ctx, %struct.chachapoly_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @memcpy(i32* %17, i32* %20, i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  %27 = load %struct.chachapoly_ctx*, %struct.chachapoly_ctx** %7, align 8
  %28 = getelementptr inbounds %struct.chachapoly_ctx, %struct.chachapoly_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  %32 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %33 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* @CHACHA_IV_SIZE, align 4
  %36 = sext i32 %35 to i64
  %37 = sub i64 %36, 4
  %38 = load %struct.chachapoly_ctx*, %struct.chachapoly_ctx** %7, align 8
  %39 = getelementptr inbounds %struct.chachapoly_ctx, %struct.chachapoly_ctx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = sub i64 %37, %41
  %43 = trunc i64 %42 to i32
  %44 = call i32 @memcpy(i32* %31, i32* %34, i32 %43)
  ret void
}

declare dso_local %struct.chachapoly_ctx* @crypto_aead_ctx(i32) #1

declare dso_local i32 @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
