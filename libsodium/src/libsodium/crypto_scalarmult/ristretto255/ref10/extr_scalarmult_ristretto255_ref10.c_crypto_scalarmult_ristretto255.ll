; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_scalarmult/ristretto255/ref10/extr_scalarmult_ristretto255_ref10.c_crypto_scalarmult_ristretto255.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_scalarmult/ristretto255/ref10/extr_scalarmult_ristretto255_ref10.c_crypto_scalarmult_ristretto255.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_scalarmult_ristretto255(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @ristretto255_frombytes(i32* %10, i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %50

17:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %31, %17
  %19 = load i32, i32* %11, align 4
  %20 = icmp ult i32 %19, 32
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %11, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %11, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8 %26, i8* %30, align 1
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %11, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %11, align 4
  br label %18

34:                                               ; preds = %18
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 31
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 127
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %36, align 1
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @ge25519_scalarmult(i32* %9, i8* %41, i32* %10)
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @ristretto255_p3_tobytes(i8* %43, i32* %9)
  %45 = load i8*, i8** %5, align 8
  %46 = call i64 @sodium_is_zero(i8* %45, i32 32)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  store i32 -1, i32* %4, align 4
  br label %50

49:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %48, %16
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i64 @ristretto255_frombytes(i32*, i8*) #1

declare dso_local i32 @ge25519_scalarmult(i32*, i8*, i32*) #1

declare dso_local i32 @ristretto255_p3_tobytes(i8*, i32*) #1

declare dso_local i64 @sodium_is_zero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
