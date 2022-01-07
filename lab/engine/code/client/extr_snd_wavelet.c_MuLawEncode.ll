; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_snd_wavelet.c_MuLawEncode.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_snd_wavelet.c_MuLawEncode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@numBits = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MuLawEncode(i16 signext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i16 %0, i16* %2, align 2
  %7 = load i16, i16* %2, align 2
  %8 = sext i16 %7 to i32
  %9 = icmp slt i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 0, i32 128
  store i32 %11, i32* %4, align 4
  %12 = load i16, i16* %2, align 2
  %13 = sext i16 %12 to i32
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i16, i16* %2, align 2
  %17 = sext i16 %16 to i32
  %18 = sub nsw i32 0, %17
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %2, align 2
  br label %20

20:                                               ; preds = %15, %1
  %21 = load i16, i16* %2, align 2
  %22 = sext i16 %21 to i64
  %23 = shl i64 %22, 0
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* %3, align 8
  %25 = add i64 %24, 132
  store i64 %25, i64* %3, align 8
  %26 = load i64, i64* %3, align 8
  %27 = icmp ugt i64 %26, 32767
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i64 32767, i64* %3, align 8
  br label %29

29:                                               ; preds = %28, %20
  %30 = load i32*, i32** @numBits, align 8
  %31 = load i64, i64* %3, align 8
  %32 = lshr i64 %31, 7
  %33 = and i64 %32, 255
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  %37 = load i64, i64* %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 3
  %40 = zext i32 %39 to i64
  %41 = lshr i64 %37, %40
  %42 = and i64 %41, 15
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = shl i32 %45, 4
  %47 = or i32 %44, %46
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
