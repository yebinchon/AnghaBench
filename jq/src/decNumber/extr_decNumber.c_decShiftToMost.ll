; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decShiftToMost.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decShiftToMost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DECDPUN = common dso_local global i64 0, align 8
@powers = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i64)* @decShiftToMost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @decShiftToMost(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* %4, align 8
  br label %136

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = add i64 %20, %21
  %23 = load i64, i64* @DECDPUN, align 8
  %24 = icmp ule i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** @powers, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %27, %31
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %34, %35
  store i64 %36, i64* %4, align 8
  br label %136

37:                                               ; preds = %19
  store i32 0, i32* %12, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @D2U(i64 %39)
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = getelementptr inbounds i32, i32* %42, i64 -1
  store i32* %43, i32** %9, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @D2U(i64 %45)
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  store i32* %48, i32** %8, align 8
  %49 = load i64, i64* @DECDPUN, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i64 @MSUDIGITS(i64 %50)
  %52 = sub i64 %49, %51
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %37
  br label %56

56:                                               ; preds = %64, %55
  %57 = load i32*, i32** %9, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = icmp uge i32* %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %8, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %60
  %65 = load i32*, i32** %9, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 -1
  store i32* %66, i32** %9, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 -1
  store i32* %68, i32** %8, align 8
  br label %56

69:                                               ; preds = %56
  br label %121

70:                                               ; preds = %37
  %71 = load i32*, i32** %5, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* %7, align 8
  %74 = add i64 %72, %73
  %75 = call i32 @D2U(i64 %74)
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %71, i64 %76
  %78 = getelementptr inbounds i32, i32* %77, i64 -1
  store i32* %78, i32** %10, align 8
  br label %79

79:                                               ; preds = %115, %70
  %80 = load i32*, i32** %9, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = icmp uge i32* %80, %81
  br i1 %82, label %83, label %120

83:                                               ; preds = %79
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* %11, align 8
  %87 = call i32 @QUOT10(i32 %85, i64 %86)
  store i32 %87, i32* %13, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32*, i32** @powers, align 8
  %92 = load i64, i64* %11, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %90, %94
  %96 = sub nsw i32 %89, %95
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %12, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = icmp ule i32* %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %83
  %104 = load i32, i32* %12, align 4
  %105 = load i32*, i32** %8, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %103, %83
  %107 = load i32, i32* %14, align 4
  %108 = load i32*, i32** @powers, align 8
  %109 = load i64, i64* @DECDPUN, align 8
  %110 = load i64, i64* %11, align 8
  %111 = sub i64 %109, %110
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %107, %113
  store i32 %114, i32* %12, align 4
  br label %115

115:                                              ; preds = %106
  %116 = load i32*, i32** %9, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 -1
  store i32* %117, i32** %9, align 8
  %118 = load i32*, i32** %8, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 -1
  store i32* %119, i32** %8, align 8
  br label %79

120:                                              ; preds = %79
  br label %121

121:                                              ; preds = %120, %69
  br label %122

122:                                              ; preds = %129, %121
  %123 = load i32*, i32** %8, align 8
  %124 = load i32*, i32** %5, align 8
  %125 = icmp uge i32* %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %122
  %127 = load i32, i32* %12, align 4
  %128 = load i32*, i32** %8, align 8
  store i32 %127, i32* %128, align 4
  store i32 0, i32* %12, align 4
  br label %129

129:                                              ; preds = %126
  %130 = load i32*, i32** %8, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 -1
  store i32* %131, i32** %8, align 8
  br label %122

132:                                              ; preds = %122
  %133 = load i64, i64* %6, align 8
  %134 = load i64, i64* %7, align 8
  %135 = add i64 %133, %134
  store i64 %135, i64* %4, align 8
  br label %136

136:                                              ; preds = %132, %25, %17
  %137 = load i64, i64* %4, align 8
  ret i64 %137
}

declare dso_local i32 @D2U(i64) #1

declare dso_local i64 @MSUDIGITS(i64) #1

declare dso_local i32 @QUOT10(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
