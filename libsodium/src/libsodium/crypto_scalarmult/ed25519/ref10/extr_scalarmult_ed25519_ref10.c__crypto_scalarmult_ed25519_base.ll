; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_scalarmult/ed25519/ref10/extr_scalarmult_ed25519_ref10.c__crypto_scalarmult_ed25519_base.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_scalarmult/ed25519/ref10/extr_scalarmult_ed25519_ref10.c__crypto_scalarmult_ed25519_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @_crypto_scalarmult_ed25519_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_crypto_scalarmult_ed25519_base(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %8, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %25, %3
  %13 = load i32, i32* %10, align 4
  %14 = icmp ult i32 %13, 32
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %10, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %10, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  store i8 %20, i8* %24, align 1
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %10, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %10, align 4
  br label %12

28:                                               ; preds = %12
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @_crypto_scalarmult_ed25519_clamp(i8* %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 31
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 127
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %36, align 1
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @ge25519_scalarmult_base(i32* %9, i8* %41)
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @ge25519_p3_tobytes(i8* %43, i32* %9)
  %45 = load i8*, i8** %5, align 8
  %46 = call i64 @_crypto_scalarmult_ed25519_is_inf(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %34
  %49 = load i8*, i8** %6, align 8
  %50 = call i64 @sodium_is_zero(i8* %49, i32 32)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48, %34
  store i32 -1, i32* %4, align 4
  br label %54

53:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %52
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @_crypto_scalarmult_ed25519_clamp(i8*) #1

declare dso_local i32 @ge25519_scalarmult_base(i32*, i8*) #1

declare dso_local i32 @ge25519_p3_tobytes(i8*, i32*) #1

declare dso_local i64 @_crypto_scalarmult_ed25519_is_inf(i8*) #1

declare dso_local i64 @sodium_is_zero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
