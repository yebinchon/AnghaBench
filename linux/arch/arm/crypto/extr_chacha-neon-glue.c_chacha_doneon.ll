; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/crypto/extr_chacha-neon-glue.c_chacha_doneon.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/crypto/extr_chacha-neon-glue.c_chacha_doneon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHACHA_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32*, i32*, i32, i32)* @chacha_doneon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chacha_doneon(i64* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* @CHACHA_BLOCK_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %11, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %12, align 8
  br label %17

17:                                               ; preds = %22, %5
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @CHACHA_BLOCK_SIZE, align 4
  %20 = mul nsw i32 %19, 4
  %21 = icmp uge i32 %18, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %17
  %23 = load i64*, i64** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @chacha_4block_xor_neon(i64* %23, i32* %24, i32* %25, i32 %26)
  %28 = load i32, i32* @CHACHA_BLOCK_SIZE, align 4
  %29 = mul nsw i32 %28, 4
  %30 = load i32, i32* %9, align 4
  %31 = sub i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* @CHACHA_BLOCK_SIZE, align 4
  %33 = mul nsw i32 %32, 4
  %34 = load i32*, i32** %8, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32* %36, i32** %8, align 8
  %37 = load i32, i32* @CHACHA_BLOCK_SIZE, align 4
  %38 = mul nsw i32 %37, 4
  %39 = load i32*, i32** %7, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32* %41, i32** %7, align 8
  %42 = load i64*, i64** %6, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 12
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 4
  store i64 %45, i64* %43, align 8
  br label %17

46:                                               ; preds = %17
  br label %47

47:                                               ; preds = %51, %46
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @CHACHA_BLOCK_SIZE, align 4
  %50 = icmp uge i32 %48, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %47
  %52 = load i64*, i64** %6, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @chacha_block_xor_neon(i64* %52, i32* %53, i32* %54, i32 %55)
  %57 = load i32, i32* @CHACHA_BLOCK_SIZE, align 4
  %58 = load i32, i32* %9, align 4
  %59 = sub i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* @CHACHA_BLOCK_SIZE, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32* %63, i32** %8, align 8
  %64 = load i32, i32* @CHACHA_BLOCK_SIZE, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32* %67, i32** %7, align 8
  %68 = load i64*, i64** %6, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 12
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %69, align 8
  br label %47

72:                                               ; preds = %47
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @memcpy(i32* %16, i32* %76, i32 %77)
  %79 = load i64*, i64** %6, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @chacha_block_xor_neon(i64* %79, i32* %16, i32* %16, i32 %80)
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @memcpy(i32* %82, i32* %16, i32 %83)
  br label %85

85:                                               ; preds = %75, %72
  %86 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %86)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @chacha_4block_xor_neon(i64*, i32*, i32*, i32) #2

declare dso_local i32 @chacha_block_xor_neon(i64*, i32*, i32*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
