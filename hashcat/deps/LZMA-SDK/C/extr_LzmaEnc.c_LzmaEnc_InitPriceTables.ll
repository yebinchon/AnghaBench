; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzmaEnc.c_LzmaEnc_InitPriceTables.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzmaEnc.c_LzmaEnc_InitPriceTables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kBitModelTotal = common dso_local global i32 0, align 4
@kNumMoveReducingBits = common dso_local global i32 0, align 4
@kNumBitPriceShiftBits = common dso_local global i32 0, align 4
@kNumBitModelTotalBits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*)* @LzmaEnc_InitPriceTables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LzmaEnc_InitPriceTables(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64* %0, i64** %2, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %57, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @kBitModelTotal, align 4
  %11 = load i32, i32* @kNumMoveReducingBits, align 4
  %12 = ashr i32 %10, %11
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %60

14:                                               ; preds = %8
  %15 = load i32, i32* @kNumBitPriceShiftBits, align 4
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @kNumMoveReducingBits, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* @kNumMoveReducingBits, align 4
  %20 = sub nsw i32 %19, 1
  %21 = shl i32 1, %20
  %22 = add nsw i32 %18, %21
  store i32 %22, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %42, %14
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 %28, %29
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = shl i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %36, %27
  %34 = load i32, i32* %5, align 4
  %35 = icmp sge i32 %34, 65536
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = ashr i32 %37, 1
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %33

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %23

45:                                               ; preds = %23
  %46 = load i32, i32* @kNumBitModelTotalBits, align 4
  %47 = load i32, i32* %4, align 4
  %48 = shl i32 %46, %47
  %49 = sub i32 %48, 15
  %50 = load i32, i32* %6, align 4
  %51 = sub i32 %49, %50
  %52 = zext i32 %51 to i64
  %53 = load i64*, i64** %2, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  store i64 %52, i64* %56, align 8
  br label %57

57:                                               ; preds = %45
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %8

60:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
