; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_jpeg.c_j_putRGBAScanline.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_jpeg.c_j_putRGBAScanline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32)* @j_putRGBAScanline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @j_putRGBAScanline(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %6, align 4
  %21 = mul nsw i32 %19, %20
  %22 = mul nsw i32 %21, 4
  store i32 %22, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %99, %4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %102

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %10, align 4
  %30 = mul nsw i32 %29, 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %11, align 1
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %10, align 4
  %37 = mul nsw i32 %36, 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %13, align 1
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %10, align 4
  %44 = mul nsw i32 %43, 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  %48 = load i8, i8* %47, align 1
  store i8 %48, i8* %12, align 1
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* %10, align 4
  %51 = mul nsw i32 %50, 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  %54 = getelementptr inbounds i8, i8* %53, i64 3
  %55 = load i8, i8* %54, align 1
  store i8 %55, i8* %14, align 1
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i32, i32* %10, align 4
  %61 = mul nsw i32 %60, 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  store i8* %64, i8** %15, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i32, i32* %10, align 4
  %70 = mul nsw i32 %69, 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  store i8* %73, i8** %17, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i32, i32* %10, align 4
  %79 = mul nsw i32 %78, 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  %82 = getelementptr inbounds i8, i8* %81, i64 2
  store i8* %82, i8** %16, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i32, i32* %10, align 4
  %88 = mul nsw i32 %87, 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %86, i64 %89
  %91 = getelementptr inbounds i8, i8* %90, i64 3
  store i8* %91, i8** %18, align 8
  %92 = load i8, i8* %11, align 1
  %93 = load i8*, i8** %15, align 8
  store i8 %92, i8* %93, align 1
  %94 = load i8, i8* %13, align 1
  %95 = load i8*, i8** %17, align 8
  store i8 %94, i8* %95, align 1
  %96 = load i8, i8* %12, align 1
  %97 = load i8*, i8** %16, align 8
  store i8 %96, i8* %97, align 1
  %98 = load i8*, i8** %18, align 8
  store i8 -1, i8* %98, align 1
  br label %99

99:                                               ; preds = %27
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %23

102:                                              ; preds = %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
