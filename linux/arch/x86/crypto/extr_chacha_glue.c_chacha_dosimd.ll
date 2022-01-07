; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_chacha_glue.c_chacha_dosimd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_chacha_glue.c_chacha_dosimd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHACHA_BLOCK_SIZE = common dso_local global i32 0, align 4
@chacha_use_avx2 = common dso_local global i64 0, align 8
@chacha_use_avx512vl = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32*, i32*, i32, i32)* @chacha_dosimd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chacha_dosimd(i64* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  br label %11

11:                                               ; preds = %16, %5
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @CHACHA_BLOCK_SIZE, align 4
  %14 = mul nsw i32 %13, 4
  %15 = icmp uge i32 %12, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %11
  %17 = load i64*, i64** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @chacha_4block_xor_ssse3(i64* %17, i32* %18, i32* %19, i32 %20, i32 %21)
  %23 = load i32, i32* @CHACHA_BLOCK_SIZE, align 4
  %24 = mul nsw i32 %23, 4
  %25 = load i32, i32* %9, align 4
  %26 = sub i32 %25, %24
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @CHACHA_BLOCK_SIZE, align 4
  %28 = mul nsw i32 %27, 4
  %29 = load i32*, i32** %8, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32* %31, i32** %8, align 8
  %32 = load i32, i32* @CHACHA_BLOCK_SIZE, align 4
  %33 = mul nsw i32 %32, 4
  %34 = load i32*, i32** %7, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32* %36, i32** %7, align 8
  %37 = load i64*, i64** %6, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 12
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 4
  store i64 %40, i64* %38, align 8
  br label %11

41:                                               ; preds = %11
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @CHACHA_BLOCK_SIZE, align 4
  %44 = icmp ugt i32 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = load i64*, i64** %6, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @chacha_4block_xor_ssse3(i64* %46, i32* %47, i32* %48, i32 %49, i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = call i64 @chacha_advance(i32 %52, i32 4)
  %54 = load i64*, i64** %6, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 12
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, %53
  store i64 %57, i64* %55, align 8
  br label %72

58:                                               ; preds = %41
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load i64*, i64** %6, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @chacha_block_xor_ssse3(i64* %62, i32* %63, i32* %64, i32 %65, i32 %66)
  %68 = load i64*, i64** %6, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 12
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %69, align 8
  br label %72

72:                                               ; preds = %45, %61, %58
  ret void
}

declare dso_local i32 @chacha_4block_xor_ssse3(i64*, i32*, i32*, i32, i32) #1

declare dso_local i64 @chacha_advance(i32, i32) #1

declare dso_local i32 @chacha_block_xor_ssse3(i64*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
