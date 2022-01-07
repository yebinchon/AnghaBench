; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_llswap.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_llswap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Q_order = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @do_llswap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_llswap(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* @Q_order, align 4
  %9 = icmp eq i32 %8, -2
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %105

11:                                               ; preds = %2
  %12 = load i32, i32* @Q_order, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %11
  store i64 0, i64* %5, align 8
  br label %15

15:                                               ; preds = %41, %14
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %15
  %20 = load i32*, i32** %3, align 8
  %21 = load i64, i64* %5, align 8
  %22 = mul nsw i64 2, %21
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = load i64, i64* %5, align 8
  %27 = mul nsw i64 2, %26
  %28 = add nsw i64 %27, 1
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = load i64, i64* %5, align 8
  %33 = mul nsw i64 2, %32
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %30, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = load i64, i64* %5, align 8
  %38 = mul nsw i64 2, %37
  %39 = add nsw i64 %38, 1
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  store i32 %35, i32* %40, align 4
  br label %41

41:                                               ; preds = %19
  %42 = load i64, i64* %5, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %5, align 8
  br label %15

44:                                               ; preds = %15
  br label %104

45:                                               ; preds = %11
  %46 = load i32, i32* @Q_order, align 4
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %70

48:                                               ; preds = %45
  store i64 0, i64* %5, align 8
  br label %49

49:                                               ; preds = %66, %48
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %4, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %49
  %54 = load i32*, i32** %3, align 8
  %55 = load i64, i64* %5, align 8
  %56 = mul nsw i64 2, %55
  %57 = add nsw i64 %56, 1
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 0, %59
  %61 = load i32*, i32** %3, align 8
  %62 = load i64, i64* %5, align 8
  %63 = mul nsw i64 2, %62
  %64 = add nsw i64 %63, 1
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  store i32 %60, i32* %65, align 4
  br label %66

66:                                               ; preds = %53
  %67 = load i64, i64* %5, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %5, align 8
  br label %49

69:                                               ; preds = %49
  br label %103

70:                                               ; preds = %45
  store i64 0, i64* %5, align 8
  br label %71

71:                                               ; preds = %99, %70
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* %4, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %102

75:                                               ; preds = %71
  %76 = load i32*, i32** %3, align 8
  %77 = load i64, i64* %5, align 8
  %78 = mul nsw i64 2, %77
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %7, align 4
  %81 = load i32*, i32** %3, align 8
  %82 = load i64, i64* %5, align 8
  %83 = mul nsw i64 2, %82
  %84 = add nsw i64 %83, 1
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 0, %86
  %88 = load i32*, i32** %3, align 8
  %89 = load i64, i64* %5, align 8
  %90 = mul nsw i64 2, %89
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %87, i32* %91, align 4
  %92 = load i32, i32* %7, align 4
  %93 = sub nsw i32 0, %92
  %94 = load i32*, i32** %3, align 8
  %95 = load i64, i64* %5, align 8
  %96 = mul nsw i64 2, %95
  %97 = add nsw i64 %96, 1
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  store i32 %93, i32* %98, align 4
  br label %99

99:                                               ; preds = %75
  %100 = load i64, i64* %5, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %5, align 8
  br label %71

102:                                              ; preds = %71
  br label %103

103:                                              ; preds = %102, %69
  br label %104

104:                                              ; preds = %103, %44
  br label %105

105:                                              ; preds = %10, %104
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
