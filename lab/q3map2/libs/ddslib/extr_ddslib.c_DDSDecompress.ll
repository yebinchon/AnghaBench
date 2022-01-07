; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/ddslib/extr_ddslib.c_DDSDecompress.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/ddslib/extr_ddslib.c_DDSDecompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DDSDecompress(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @DDSGetInfo(i32* %10, i32* %6, i32* %7, i32* %9)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %3, align 4
  br label %64

16:                                               ; preds = %2
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %54 [
    i32 134, label %18
    i32 133, label %24
    i32 132, label %30
    i32 131, label %36
    i32 130, label %42
    i32 129, label %48
    i32 128, label %55
  ]

18:                                               ; preds = %16
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @DDSDecompressARGB8888(i32* %19, i32 %20, i32 %21, i8* %22)
  store i32 %23, i32* %8, align 4
  br label %62

24:                                               ; preds = %16
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @DDSDecompressDXT1(i32* %25, i32 %26, i32 %27, i8* %28)
  store i32 %29, i32* %8, align 4
  br label %62

30:                                               ; preds = %16
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @DDSDecompressDXT2(i32* %31, i32 %32, i32 %33, i8* %34)
  store i32 %35, i32* %8, align 4
  br label %62

36:                                               ; preds = %16
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @DDSDecompressDXT3(i32* %37, i32 %38, i32 %39, i8* %40)
  store i32 %41, i32* %8, align 4
  br label %62

42:                                               ; preds = %16
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @DDSDecompressDXT4(i32* %43, i32 %44, i32 %45, i8* %46)
  store i32 %47, i32* %8, align 4
  br label %62

48:                                               ; preds = %16
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @DDSDecompressDXT5(i32* %49, i32 %50, i32 %51, i8* %52)
  store i32 %53, i32* %8, align 4
  br label %62

54:                                               ; preds = %16
  br label %55

55:                                               ; preds = %16, %54
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = mul nsw i32 %57, %58
  %60 = mul nsw i32 %59, 4
  %61 = call i32 @memset(i8* %56, i32 255, i32 %60)
  store i32 -1, i32* %8, align 4
  br label %62

62:                                               ; preds = %55, %48, %42, %36, %30, %24, %18
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %14
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @DDSGetInfo(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DDSDecompressARGB8888(i32*, i32, i32, i8*) #1

declare dso_local i32 @DDSDecompressDXT1(i32*, i32, i32, i8*) #1

declare dso_local i32 @DDSDecompressDXT2(i32*, i32, i32, i8*) #1

declare dso_local i32 @DDSDecompressDXT3(i32*, i32, i32, i8*) #1

declare dso_local i32 @DDSDecompressDXT4(i32*, i32, i32, i8*) #1

declare dso_local i32 @DDSDecompressDXT5(i32*, i32, i32, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
