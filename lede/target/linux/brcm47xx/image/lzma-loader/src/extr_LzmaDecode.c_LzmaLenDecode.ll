; ModuleID = '/home/carl/AnghaBench/lede/target/linux/brcm47xx/image/lzma-loader/src/extr_LzmaDecode.c_LzmaLenDecode.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/brcm47xx/image/lzma-loader/src/extr_LzmaDecode.c_LzmaLenDecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LenChoice = common dso_local global i32 0, align 4
@LenLow = common dso_local global i32 0, align 4
@kLenNumLowBits = common dso_local global i32 0, align 4
@LenChoice2 = common dso_local global i32 0, align 4
@kLenNumLowSymbols = common dso_local global i32 0, align 4
@LenMid = common dso_local global i32 0, align 4
@kLenNumMidBits = common dso_local global i32 0, align 4
@kLenNumMidSymbols = common dso_local global i32 0, align 4
@LenHigh = common dso_local global i32 0, align 4
@kLenNumHighBits = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LzmaLenDecode(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* @LenChoice, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32*, i32** %6, align 8
  %13 = call i64 @RangeDecoderBitDecode(i32* %11, i32* %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @LenLow, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @kLenNumLowBits, align 4
  %22 = shl i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %19, i64 %23
  %25 = load i32, i32* @kLenNumLowBits, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @RangeDecoderBitTreeDecode(i32* %24, i32 %25, i32* %26)
  store i32 %27, i32* %4, align 4
  br label %63

28:                                               ; preds = %3
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @LenChoice2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32*, i32** %6, align 8
  %34 = call i64 @RangeDecoderBitDecode(i32* %32, i32* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %28
  %37 = load i32, i32* @kLenNumLowSymbols, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @LenMid, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @kLenNumMidBits, align 4
  %44 = shl i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i32, i32* @kLenNumMidBits, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @RangeDecoderBitTreeDecode(i32* %46, i32 %47, i32* %48)
  %50 = add nsw i32 %37, %49
  store i32 %50, i32* %4, align 4
  br label %63

51:                                               ; preds = %28
  %52 = load i32, i32* @kLenNumLowSymbols, align 4
  %53 = load i32, i32* @kLenNumMidSymbols, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* @LenHigh, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* @kLenNumHighBits, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @RangeDecoderBitTreeDecode(i32* %58, i32 %59, i32* %60)
  %62 = add nsw i32 %54, %61
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %51, %36, %15
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @RangeDecoderBitDecode(i32*, i32*) #1

declare dso_local i32 @RangeDecoderBitTreeDecode(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
