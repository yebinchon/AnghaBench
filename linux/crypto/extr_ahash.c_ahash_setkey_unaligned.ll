; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ahash.c_ahash_setkey_unaligned.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ahash.c_ahash_setkey_unaligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ahash = type { i32 (%struct.crypto_ahash*, i32*, i32)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ahash*, i32*, i32)* @ahash_setkey_unaligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_setkey_unaligned(%struct.crypto_ahash* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.crypto_ahash* %0, %struct.crypto_ahash** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %14 = call i64 @crypto_ahash_alignmask(%struct.crypto_ahash* %13)
  store i64 %14, i64* %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %8, align 8
  %18 = add i64 %16, %17
  store i64 %18, i64* %12, align 8
  %19 = load i64, i64* %12, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32* @kmalloc(i64 %19, i32 %20)
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %48

27:                                               ; preds = %3
  %28 = load i32*, i32** %10, align 8
  %29 = ptrtoint i32* %28 to i64
  %30 = load i64, i64* %8, align 8
  %31 = add i64 %30, 1
  %32 = call i64 @ALIGN(i64 %29, i64 %31)
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %11, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @memcpy(i32* %34, i32* %35, i32 %36)
  %38 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %39 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %38, i32 0, i32 0
  %40 = load i32 (%struct.crypto_ahash*, i32*, i32)*, i32 (%struct.crypto_ahash*, i32*, i32)** %39, align 8
  %41 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 %40(%struct.crypto_ahash* %41, i32* %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @kzfree(i32* %45)
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %27, %24
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @crypto_ahash_alignmask(%struct.crypto_ahash*) #1

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i64 @ALIGN(i64, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kzfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
