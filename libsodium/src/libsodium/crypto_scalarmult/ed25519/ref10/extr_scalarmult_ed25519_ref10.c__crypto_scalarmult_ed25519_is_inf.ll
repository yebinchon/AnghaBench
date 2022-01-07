; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_scalarmult/ed25519/ref10/extr_scalarmult_ed25519_ref10.c__crypto_scalarmult_ed25519_is_inf.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_scalarmult/ed25519/ref10/extr_scalarmult_ed25519_ref10.c__crypto_scalarmult_ed25519_is_inf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @_crypto_scalarmult_ed25519_is_inf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_crypto_scalarmult_ed25519_is_inf(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = xor i32 %8, 1
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* %3, align 1
  store i32 1, i32* %4, align 4
  br label %11

11:                                               ; preds = %25, %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp ult i32 %12, 31
  br i1 %13, label %14, label %28

14:                                               ; preds = %11
  %15 = load i8*, i8** %2, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* %3, align 1
  %22 = zext i8 %21 to i32
  %23 = or i32 %22, %20
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %3, align 1
  br label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %4, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %11

28:                                               ; preds = %11
  %29 = load i8*, i8** %2, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 31
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 127
  %34 = load i8, i8* %3, align 1
  %35 = zext i8 %34 to i32
  %36 = or i32 %35, %33
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %3, align 1
  %38 = load i8, i8* %3, align 1
  %39 = zext i8 %38 to i32
  %40 = sub i32 %39, 1
  %41 = lshr i32 %40, 8
  %42 = and i32 %41, 1
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
