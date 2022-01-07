; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_scalarmult/ristretto255/ref10/extr_scalarmult_ristretto255_ref10.c_crypto_scalarmult_ristretto255_base.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_scalarmult/ristretto255/ref10/extr_scalarmult_ristretto255_ref10.c_crypto_scalarmult_ristretto255_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_scalarmult_ristretto255_base(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %6, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %23, %2
  %11 = load i32, i32* %8, align 4
  %12 = icmp ult i32 %11, 32
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8 %18, i8* %22, align 1
  br label %23

23:                                               ; preds = %13
  %24 = load i32, i32* %8, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %8, align 4
  br label %10

26:                                               ; preds = %10
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 31
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 127
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %28, align 1
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @ge25519_scalarmult_base(i32* %7, i8* %33)
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @ristretto255_p3_tobytes(i8* %35, i32* %7)
  %37 = load i8*, i8** %4, align 8
  %38 = call i64 @sodium_is_zero(i8* %37, i32 32)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %42

41:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %40
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @ge25519_scalarmult_base(i32*, i8*) #1

declare dso_local i32 @ristretto255_p3_tobytes(i8*, i32*) #1

declare dso_local i64 @sodium_is_zero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
