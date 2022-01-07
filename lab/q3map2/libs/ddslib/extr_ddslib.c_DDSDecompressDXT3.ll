; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/ddslib/extr_ddslib.c_DDSDecompressDXT3.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/ddslib/extr_ddslib.c_DDSDecompressDXT3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32, i8*)* @DDSDecompressDXT3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DDSDecompressDXT3(%struct.TYPE_6__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca [4 x %struct.TYPE_5__], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sdiv i32 %18, 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %7, align 4
  %21 = sdiv i32 %20, 4
  store i32 %21, i32* %12, align 4
  %22 = getelementptr inbounds [4 x %struct.TYPE_5__], [4 x %struct.TYPE_5__]* %17, i64 0, i64 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  store i64 0, i64* %23, align 16
  %24 = getelementptr inbounds [4 x %struct.TYPE_5__], [4 x %struct.TYPE_5__]* %17, i64 0, i64 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 255, i32* %25, align 16
  %26 = getelementptr inbounds [4 x %struct.TYPE_5__], [4 x %struct.TYPE_5__]* %17, i64 0, i64 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store i32 255, i32* %27, align 4
  %28 = getelementptr inbounds [4 x %struct.TYPE_5__], [4 x %struct.TYPE_5__]* %17, i64 0, i64 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  store i32 255, i32* %29, align 8
  %30 = getelementptr inbounds [4 x %struct.TYPE_5__], [4 x %struct.TYPE_5__]* %17, i64 0, i64 0
  %31 = bitcast %struct.TYPE_5__* %30 to i32*
  %32 = load i32, i32* %31, align 16
  store i32 %32, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %89, %4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %92

37:                                               ; preds = %33
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = mul nsw i32 %41, %42
  %44 = mul nsw i32 %43, 16
  %45 = sext i32 %44 to i64
  %46 = add i64 %40, %45
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %15, align 8
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %83, %37
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %88

52:                                               ; preds = %48
  %53 = load i32*, i32** %15, align 8
  store i32* %53, i32** %16, align 8
  %54 = load i32*, i32** %15, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %15, align 8
  %56 = load i32*, i32** %15, align 8
  %57 = getelementptr inbounds [4 x %struct.TYPE_5__], [4 x %struct.TYPE_5__]* %17, i64 0, i64 0
  %58 = call i32 @DDSGetColorBlockColors(i32* %56, %struct.TYPE_5__* %57)
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = mul nsw i32 %60, 16
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  %64 = load i32, i32* %10, align 4
  %65 = mul nsw i32 %64, 4
  %66 = load i32, i32* %6, align 4
  %67 = mul nsw i32 %65, %66
  %68 = mul nsw i32 %67, 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %63, i64 %69
  %71 = bitcast i8* %70 to i32*
  store i32* %71, i32** %13, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = load i32*, i32** %15, align 8
  %74 = load i32, i32* %6, align 4
  %75 = getelementptr inbounds [4 x %struct.TYPE_5__], [4 x %struct.TYPE_5__]* %17, i64 0, i64 0
  %76 = bitcast %struct.TYPE_5__* %75 to i32*
  %77 = call i32 @DDSDecodeColorBlock(i32* %72, i32* %73, i32 %74, i32* %76)
  %78 = load i32*, i32** %13, align 8
  %79 = load i32*, i32** %16, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @DDSDecodeAlphaExplicit(i32* %78, i32* %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %52
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  %86 = load i32*, i32** %15, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %15, align 8
  br label %48

88:                                               ; preds = %48
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %33

92:                                               ; preds = %33
  ret i32 0
}

declare dso_local i32 @DDSGetColorBlockColors(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @DDSDecodeColorBlock(i32*, i32*, i32, i32*) #1

declare dso_local i32 @DDSDecodeAlphaExplicit(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
