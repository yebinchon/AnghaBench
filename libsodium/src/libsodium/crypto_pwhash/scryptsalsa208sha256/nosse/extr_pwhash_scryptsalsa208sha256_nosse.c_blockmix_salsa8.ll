; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/nosse/extr_pwhash_scryptsalsa208sha256_nosse.c_blockmix_salsa8.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/nosse/extr_pwhash_scryptsalsa208sha256_nosse.c_blockmix_salsa8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i64)* @blockmix_salsa8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blockmix_salsa8(i32* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i64, i64* %8, align 8
  %13 = mul i64 2, %12
  %14 = sub i64 %13, 1
  %15 = mul i64 %14, 16
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  %17 = call i32 @blkcpy_64(i32* %10, i32* %16)
  store i64 0, i64* %9, align 8
  br label %18

18:                                               ; preds = %56, %4
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = mul i64 2, %20
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %23, label %59

23:                                               ; preds = %18
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i64, i64* %9, align 8
  %27 = mul i64 %26, 16
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32 @blkxor_64(i32* %24, i32* %28)
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @salsa20_8(i32* %30)
  %32 = load i32*, i32** %6, align 8
  %33 = load i64, i64* %9, align 8
  %34 = mul i64 %33, 8
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @blkcpy_64(i32* %35, i32* %36)
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i64, i64* %9, align 8
  %41 = mul i64 %40, 16
  %42 = add i64 %41, 16
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = call i32 @blkxor_64(i32* %38, i32* %43)
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @salsa20_8(i32* %45)
  %47 = load i32*, i32** %6, align 8
  %48 = load i64, i64* %9, align 8
  %49 = mul i64 %48, 8
  %50 = load i64, i64* %8, align 8
  %51 = mul i64 %50, 16
  %52 = add i64 %49, %51
  %53 = getelementptr inbounds i32, i32* %47, i64 %52
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @blkcpy_64(i32* %53, i32* %54)
  br label %56

56:                                               ; preds = %23
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %57, 2
  store i64 %58, i64* %9, align 8
  br label %18

59:                                               ; preds = %18
  ret void
}

declare dso_local i32 @blkcpy_64(i32*, i32*) #1

declare dso_local i32 @blkxor_64(i32*, i32*) #1

declare dso_local i32 @salsa20_8(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
