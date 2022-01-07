; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_convert.c_base64_encode.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_convert.c_base64_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @base64_encode(i32 (i32)* %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32 (i32)*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 (i32)* %0, i32 (i32)** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %20 = load i32*, i32** %6, align 8
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %8, align 8
  store i32* %21, i32** %10, align 8
  store i64 0, i64* %11, align 8
  br label %22

22:                                               ; preds = %108, %4
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %111

26:                                               ; preds = %22
  %27 = load i64, i64* %11, align 8
  %28 = add i64 %27, 0
  %29 = load i64, i64* %7, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  br label %36

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi i32 [ %34, %31 ], [ 0, %35 ]
  store i32 %37, i32* %12, align 4
  %38 = load i64, i64* %11, align 8
  %39 = add i64 %38, 1
  %40 = load i64, i64* %7, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32*, i32** %9, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  br label %47

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %42
  %48 = phi i32 [ %45, %42 ], [ 0, %46 ]
  store i32 %48, i32* %13, align 4
  %49 = load i64, i64* %11, align 8
  %50 = add i64 %49, 2
  %51 = load i64, i64* %7, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  br label %58

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %53
  %59 = phi i32 [ %56, %53 ], [ 0, %57 ]
  store i32 %59, i32* %14, align 4
  %60 = load i32 (i32)*, i32 (i32)** %5, align 8
  %61 = load i32, i32* %12, align 4
  %62 = ashr i32 %61, 2
  %63 = and i32 %62, 63
  %64 = call i32 %60(i32 %63)
  store i32 %64, i32* %15, align 4
  %65 = load i32 (i32)*, i32 (i32)** %5, align 8
  %66 = load i32, i32* %12, align 4
  %67 = shl i32 %66, 4
  %68 = and i32 %67, 48
  %69 = load i32, i32* %13, align 4
  %70 = ashr i32 %69, 4
  %71 = and i32 %70, 15
  %72 = or i32 %68, %71
  %73 = call i32 %65(i32 %72)
  store i32 %73, i32* %16, align 4
  %74 = load i32 (i32)*, i32 (i32)** %5, align 8
  %75 = load i32, i32* %13, align 4
  %76 = shl i32 %75, 2
  %77 = and i32 %76, 60
  %78 = load i32, i32* %14, align 4
  %79 = ashr i32 %78, 6
  %80 = and i32 %79, 3
  %81 = or i32 %77, %80
  %82 = call i32 %74(i32 %81)
  store i32 %82, i32* %17, align 4
  %83 = load i32 (i32)*, i32 (i32)** %5, align 8
  %84 = load i32, i32* %14, align 4
  %85 = ashr i32 %84, 0
  %86 = and i32 %85, 63
  %87 = call i32 %83(i32 %86)
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %15, align 4
  %89 = and i32 %88, 127
  %90 = load i32*, i32** %10, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %16, align 4
  %93 = and i32 %92, 127
  %94 = load i32*, i32** %10, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %17, align 4
  %97 = and i32 %96, 127
  %98 = load i32*, i32** %10, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %18, align 4
  %101 = and i32 %100, 127
  %102 = load i32*, i32** %10, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  store i32 %101, i32* %103, align 4
  %104 = load i32*, i32** %9, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  store i32* %105, i32** %9, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 4
  store i32* %107, i32** %10, align 8
  br label %108

108:                                              ; preds = %58
  %109 = load i64, i64* %11, align 8
  %110 = add i64 %109, 3
  store i64 %110, i64* %11, align 8
  br label %22

111:                                              ; preds = %22
  %112 = load i64, i64* %7, align 8
  %113 = uitofp i64 %112 to double
  %114 = fadd double 5.000000e-01, %113
  %115 = fmul double %114, 8.000000e+00
  %116 = fdiv double %115, 6.000000e+00
  %117 = fptosi double %116 to i32
  store i32 %117, i32* %19, align 4
  br label %118

118:                                              ; preds = %122, %111
  %119 = load i32, i32* %19, align 4
  %120 = srem i32 %119, 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %118
  %123 = load i32*, i32** %8, align 8
  %124 = load i32, i32* %19, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 61, i32* %126, align 4
  %127 = load i32, i32* %19, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %19, align 4
  br label %118

129:                                              ; preds = %118
  %130 = load i32, i32* %19, align 4
  %131 = sext i32 %130 to i64
  ret i64 %131
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
