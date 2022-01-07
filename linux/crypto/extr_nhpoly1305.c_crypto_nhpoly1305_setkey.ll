; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_nhpoly1305.c_crypto_nhpoly1305_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_nhpoly1305.c_crypto_nhpoly1305_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_shash = type { i32 }
%struct.nhpoly1305_key = type { i32*, i32 }

@NHPOLY1305_KEY_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@POLY1305_BLOCK_SIZE = common dso_local global i32 0, align 4
@NH_KEY_WORDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_nhpoly1305_setkey(%struct.crypto_shash* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_shash*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nhpoly1305_key*, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_shash* %0, %struct.crypto_shash** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %11 = call %struct.nhpoly1305_key* @crypto_shash_ctx(%struct.crypto_shash* %10)
  store %struct.nhpoly1305_key* %11, %struct.nhpoly1305_key** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @NHPOLY1305_KEY_SIZE, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %48

18:                                               ; preds = %3
  %19 = load %struct.nhpoly1305_key*, %struct.nhpoly1305_key** %8, align 8
  %20 = getelementptr inbounds %struct.nhpoly1305_key, %struct.nhpoly1305_key* %19, i32 0, i32 1
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @poly1305_core_setkey(i32* %20, i32* %21)
  %23 = load i32, i32* @POLY1305_BLOCK_SIZE, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32* %26, i32** %6, align 8
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %44, %18
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @NH_KEY_WORDS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = call i32 @get_unaligned_le32(i32* %36)
  %38 = load %struct.nhpoly1305_key*, %struct.nhpoly1305_key** %8, align 8
  %39 = getelementptr inbounds %struct.nhpoly1305_key, %struct.nhpoly1305_key* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %37, i32* %43, align 4
  br label %44

44:                                               ; preds = %31
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %27

47:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %15
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.nhpoly1305_key* @crypto_shash_ctx(%struct.crypto_shash*) #1

declare dso_local i32 @poly1305_core_setkey(i32*, i32*) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
