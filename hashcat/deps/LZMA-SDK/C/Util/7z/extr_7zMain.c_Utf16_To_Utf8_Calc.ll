; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/Util/7z/extr_7zMain.c_Utf16_To_Utf8_Calc.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/Util/7z/extr_7zMain.c_Utf16_To_Utf8_Calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*)* @Utf16_To_Utf8_Calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Utf16_To_Utf8_Calc(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 0, i64* %5, align 8
  br label %8

8:                                                ; preds = %54, %48, %27, %22, %2
  %9 = load i32*, i32** %3, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i64, i64* %5, align 8
  ret i64 %13

14:                                               ; preds = %8
  %15 = load i64, i64* %5, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* %5, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %3, align 8
  %19 = load i32, i32* %17, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 128
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %8

23:                                               ; preds = %14
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @_UTF8_RANGE(i32 1)
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i64, i64* %5, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %5, align 8
  br label %8

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4
  %32 = icmp sge i32 %31, 55296
  br i1 %32, label %33, label %54

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 56320
  br i1 %35, label %36, label %54

36:                                               ; preds = %33
  %37 = load i32*, i32** %3, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = icmp ne i32* %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp sge i32 %43, 56320
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 57344
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32*, i32** %3, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %3, align 8
  %51 = load i64, i64* %5, align 8
  %52 = add i64 %51, 3
  store i64 %52, i64* %5, align 8
  br label %8

53:                                               ; preds = %45, %40
  br label %54

54:                                               ; preds = %53, %36, %33, %30
  %55 = load i64, i64* %5, align 8
  %56 = add i64 %55, 2
  store i64 %56, i64* %5, align 8
  br label %8
}

declare dso_local i32 @_UTF8_RANGE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
