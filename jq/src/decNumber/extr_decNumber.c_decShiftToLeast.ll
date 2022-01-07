; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decShiftToLeast.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decShiftToLeast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DECDPUN = common dso_local global i32 0, align 4
@powers = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @decShiftToLeast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decShiftToLeast(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %4, align 4
  br label %141

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @DECDPUN, align 4
  %22 = mul nsw i32 %20, %21
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32*, i32** %5, align 8
  store i32 0, i32* %25, align 4
  store i32 1, i32* %4, align 4
  br label %141

26:                                               ; preds = %18
  %27 = load i32*, i32** %5, align 8
  store i32* %27, i32** %8, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @MSUDIGITS(i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @DECDPUN, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %63

33:                                               ; preds = %26
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @D2U(i32 %35)
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  store i32* %38, i32** %9, align 8
  br label %39

39:                                               ; preds = %50, %33
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = icmp ult i32* %40, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %8, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %46
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %8, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %9, align 8
  br label %39

55:                                               ; preds = %39
  %56 = load i32*, i32** %8, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = ptrtoint i32* %56 to i64
  %59 = ptrtoint i32* %57 to i64
  %60 = sub i64 %58, %59
  %61 = sdiv exact i64 %60, 4
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %4, align 4
  br label %141

63:                                               ; preds = %26
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sub nsw i32 %65, %66
  %68 = call i32 @D2U(i32 %67)
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %64, i64 %69
  store i32* %70, i32** %9, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @DECDPUN, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %7, align 4
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %11, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @QUOT10(i32 %77, i32 %78)
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %129, %63
  %81 = load i32, i32* %12, align 4
  %82 = load i32*, i32** %8, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* @DECDPUN, align 4
  %84 = load i32, i32* %10, align 4
  %85 = sub nsw i32 %83, %84
  %86 = load i32, i32* %11, align 4
  %87 = sub nsw i32 %86, %85
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp sle i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  br label %132

91:                                               ; preds = %80
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %9, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @QUOT10(i32 %96, i32 %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32*, i32** @powers, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = mul nsw i32 %101, %106
  %108 = sub nsw i32 %100, %107
  store i32 %108, i32* %13, align 4
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load i32*, i32** @powers, align 8
  %113 = load i32, i32* @DECDPUN, align 4
  %114 = load i32, i32* %10, align 4
  %115 = sub nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %112, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %111, %118
  %120 = add nsw i32 %110, %119
  %121 = load i32*, i32** %8, align 8
  store i32 %120, i32* %121, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %11, align 4
  %124 = sub nsw i32 %123, %122
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp sle i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %91
  br label %132

128:                                              ; preds = %91
  br label %129

129:                                              ; preds = %128
  %130 = load i32*, i32** %8, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %8, align 8
  br label %80

132:                                              ; preds = %127, %90
  %133 = load i32*, i32** %8, align 8
  %134 = load i32*, i32** %5, align 8
  %135 = ptrtoint i32* %133 to i64
  %136 = ptrtoint i32* %134 to i64
  %137 = sub i64 %135, %136
  %138 = sdiv exact i64 %137, 4
  %139 = add nsw i64 %138, 1
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %132, %55, %24, %16
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @MSUDIGITS(i32) #1

declare dso_local i32 @D2U(i32) #1

declare dso_local i32 @QUOT10(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
