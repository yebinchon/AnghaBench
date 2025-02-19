; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_stream/xsalsa20/extr_stream_xsalsa20.c_crypto_stream_xsalsa20.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_stream/xsalsa20/extr_stream_xsalsa20.c_crypto_stream_xsalsa20.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_stream_xsalsa20(i8* %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [32 x i8], align 16
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %12 = load i8*, i8** %7, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 @crypto_core_hsalsa20(i8* %11, i8* %12, i8* %13, i32* null)
  %15 = load i8*, i8** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 16
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %20 = call i32 @crypto_stream_salsa20(i8* %15, i64 %16, i8* %18, i8* %19)
  store i32 %20, i32* %10, align 4
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %22 = call i32 @sodium_memzero(i8* %21, i32 32)
  %23 = load i32, i32* %10, align 4
  ret i32 %23
}

declare dso_local i32 @crypto_core_hsalsa20(i8*, i8*, i8*, i32*) #1

declare dso_local i32 @crypto_stream_salsa20(i8*, i64, i8*, i8*) #1

declare dso_local i32 @sodium_memzero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
