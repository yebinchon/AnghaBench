; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_stream/chacha20/extr_stream_chacha20.c_crypto_stream_chacha20_ietf_xor_ic.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_stream/chacha20/extr_stream_chacha20.c_crypto_stream_chacha20_ietf_xor_ic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_stream_chacha20_ietf_xor_ic(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* %5, i8** %12, align 8
  %13 = load i64, i64* %11, align 8
  %14 = load i64, i64* %9, align 8
  %15 = add i64 %14, 63
  %16 = udiv i64 %15, 64
  %17 = sub i64 4294967296, %16
  %18 = icmp ugt i64 %13, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = call i32 (...) @sodium_misuse()
  br label %21

21:                                               ; preds = %19, %6
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = call i32 @crypto_stream_chacha20_ietf_ext_xor_ic(i8* %22, i8* %23, i64 %24, i8* %25, i64 %26, i8* %27)
  ret i32 %28
}

declare dso_local i32 @sodium_misuse(...) #1

declare dso_local i32 @crypto_stream_chacha20_ietf_ext_xor_ic(i8*, i8*, i64, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
