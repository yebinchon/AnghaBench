; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_scalarmult/ed25519/ref10/extr_scalarmult_ed25519_ref10.c__crypto_scalarmult_ed25519.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_scalarmult/ed25519/ref10/extr_scalarmult_ed25519_ref10.c__crypto_scalarmult_ed25519.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32)* @_crypto_scalarmult_ed25519 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_crypto_scalarmult_ed25519(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @ge25519_is_canonical(i8* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @ge25519_has_small_order(i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @ge25519_frombytes(i32* %12, i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = call i64 @ge25519_is_on_main_subgroup(i32* %12)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %22, %18, %4
  store i32 -1, i32* %5, align 4
  br label %73

30:                                               ; preds = %26
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %44, %30
  %32 = load i32, i32* %13, align 4
  %33 = icmp ult i32 %32, 32
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %13, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = load i8*, i8** %10, align 8
  %41 = load i32, i32* %13, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8 %39, i8* %43, align 1
  br label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %13, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %13, align 4
  br label %31

47:                                               ; preds = %31
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @_crypto_scalarmult_ed25519_clamp(i8* %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 31
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = and i32 %57, 127
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %55, align 1
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @ge25519_scalarmult(i32* %11, i8* %60, i32* %12)
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @ge25519_p3_tobytes(i8* %62, i32* %11)
  %64 = load i8*, i8** %6, align 8
  %65 = call i64 @_crypto_scalarmult_ed25519_is_inf(i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %53
  %68 = load i8*, i8** %7, align 8
  %69 = call i64 @sodium_is_zero(i8* %68, i32 32)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67, %53
  store i32 -1, i32* %5, align 4
  br label %73

72:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %71, %29
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i64 @ge25519_is_canonical(i8*) #1

declare dso_local i64 @ge25519_has_small_order(i8*) #1

declare dso_local i64 @ge25519_frombytes(i32*, i8*) #1

declare dso_local i64 @ge25519_is_on_main_subgroup(i32*) #1

declare dso_local i32 @_crypto_scalarmult_ed25519_clamp(i8*) #1

declare dso_local i32 @ge25519_scalarmult(i32*, i8*, i32*) #1

declare dso_local i32 @ge25519_p3_tobytes(i8*, i32*) #1

declare dso_local i64 @_crypto_scalarmult_ed25519_is_inf(i8*) #1

declare dso_local i64 @sodium_is_zero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
