; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/Util/7z/extr_7zMain.c_Utf16_To_Utf8.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/Util/7z/extr_7zMain.c_Utf16_To_Utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @Utf16_To_Utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @Utf16_To_Utf8(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  br label %9

9:                                                ; preds = %89, %60, %31, %21, %3
  %10 = load i32*, i32** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp eq i32* %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32*, i32** %4, align 8
  ret i32* %14

15:                                               ; preds = %9
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %5, align 8
  %18 = load i32, i32* %16, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 128
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  %23 = trunc i32 %22 to i8
  %24 = sext i8 %23 to i32
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %4, align 8
  store i32 %24, i32* %25, align 4
  br label %9

27:                                               ; preds = %15
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @_UTF8_RANGE(i32 1)
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @_UTF8_HEAD(i32 1, i32 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @_UTF8_CHAR(i32 0, i32 %36)
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 %37, i32* %39, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  store i32* %41, i32** %4, align 8
  br label %9

42:                                               ; preds = %27
  %43 = load i32, i32* %7, align 4
  %44 = icmp sge i32 %43, 55296
  br i1 %44, label %45, label %89

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 56320
  br i1 %47, label %48, label %89

48:                                               ; preds = %45
  %49 = load i32*, i32** %5, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = icmp ne i32* %49, %50
  br i1 %51, label %52, label %89

52:                                               ; preds = %48
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp sge i32 %55, 56320
  br i1 %56, label %57, label %88

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 57344
  br i1 %59, label %60, label %88

60:                                               ; preds = %57
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 %63, 55296
  %65 = shl i32 %64, 10
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 %66, 56320
  %68 = or i32 %65, %67
  %69 = add nsw i32 %68, 65536
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @_UTF8_HEAD(i32 3, i32 %70)
  %72 = load i32*, i32** %4, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @_UTF8_CHAR(i32 2, i32 %74)
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @_UTF8_CHAR(i32 1, i32 %78)
  %80 = load i32*, i32** %4, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @_UTF8_CHAR(i32 0, i32 %82)
  %84 = load i32*, i32** %4, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 3
  store i32 %83, i32* %85, align 4
  %86 = load i32*, i32** %4, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 4
  store i32* %87, i32** %4, align 8
  br label %9

88:                                               ; preds = %57, %52
  br label %89

89:                                               ; preds = %88, %48, %45, %42
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @_UTF8_HEAD(i32 2, i32 %90)
  %92 = load i32*, i32** %4, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @_UTF8_CHAR(i32 1, i32 %94)
  %96 = load i32*, i32** %4, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @_UTF8_CHAR(i32 0, i32 %98)
  %100 = load i32*, i32** %4, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  store i32 %99, i32* %101, align 4
  %102 = load i32*, i32** %4, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  store i32* %103, i32** %4, align 8
  br label %9
}

declare dso_local i32 @_UTF8_RANGE(i32) #1

declare dso_local i32 @_UTF8_HEAD(i32, i32) #1

declare dso_local i32 @_UTF8_CHAR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
