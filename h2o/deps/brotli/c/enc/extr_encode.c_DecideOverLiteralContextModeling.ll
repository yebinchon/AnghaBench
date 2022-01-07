; ModuleID = '/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_encode.c_DecideOverLiteralContextModeling.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_encode.c_DecideOverLiteralContextModeling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIN_QUALITY_FOR_CONTEXT_MODELING = common dso_local global i32 0, align 4
@DecideOverLiteralContextModeling.lut = internal constant [4 x i32] [i32 0, i32 0, i32 1, i32 2], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i64, i64, i32, i64, i64*, i32**)* @DecideOverLiteralContextModeling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DecideOverLiteralContextModeling(i32* %0, i64 %1, i64 %2, i64 %3, i32 %4, i64 %5, i64* %6, i32** %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i64, align 8
  %18 = alloca [9 x i32], align 16
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i64* %6, i64** %15, align 8
  store i32** %7, i32*** %16, align 8
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @MIN_QUALITY_FOR_CONTEXT_MODELING, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %8
  %27 = load i64, i64* %11, align 8
  %28 = icmp ult i64 %27, 64
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %8
  br label %110

30:                                               ; preds = %26
  %31 = load i32*, i32** %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load i64, i64* %14, align 8
  %37 = load i64*, i64** %15, align 8
  %38 = load i32**, i32*** %16, align 8
  %39 = call i64 @ShouldUseComplexStaticContextMap(i32* %31, i64 %32, i64 %33, i64 %34, i32 %35, i64 %36, i64* %37, i32** %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %109

42:                                               ; preds = %30
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = add i64 %43, %44
  store i64 %45, i64* %17, align 8
  %46 = bitcast [9 x i32]* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %46, i8 0, i64 36, i1 false)
  br label %47

47:                                               ; preds = %100, %42
  %48 = load i64, i64* %10, align 8
  %49 = add i64 %48, 64
  %50 = load i64, i64* %17, align 8
  %51 = icmp ule i64 %49, %50
  br i1 %51, label %52, label %103

52:                                               ; preds = %47
  %53 = load i64, i64* %10, align 8
  %54 = add i64 %53, 64
  store i64 %54, i64* %19, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %12, align 8
  %58 = and i64 %56, %57
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 6
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* @DecideOverLiteralContextModeling.lut, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %64, 3
  store i32 %65, i32* %20, align 4
  %66 = load i64, i64* %10, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %21, align 8
  br label %68

68:                                               ; preds = %96, %52
  %69 = load i64, i64* %21, align 8
  %70 = load i64, i64* %19, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %99

72:                                               ; preds = %68
  %73 = load i32*, i32** %9, align 8
  %74 = load i64, i64* %21, align 8
  %75 = load i64, i64* %12, align 8
  %76 = and i64 %74, %75
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %22, align 4
  %79 = load i32, i32* %20, align 4
  %80 = load i32, i32* %22, align 4
  %81 = ashr i32 %80, 6
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* @DecideOverLiteralContextModeling.lut, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %79, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [9 x i32], [9 x i32]* %18, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* %22, align 4
  %91 = ashr i32 %90, 6
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* @DecideOverLiteralContextModeling.lut, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %94, 3
  store i32 %95, i32* %20, align 4
  br label %96

96:                                               ; preds = %72
  %97 = load i64, i64* %21, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %21, align 8
  br label %68

99:                                               ; preds = %68
  br label %100

100:                                              ; preds = %99
  %101 = load i64, i64* %10, align 8
  %102 = add i64 %101, 4096
  store i64 %102, i64* %10, align 8
  br label %47

103:                                              ; preds = %47
  %104 = load i32, i32* %13, align 4
  %105 = getelementptr inbounds [9 x i32], [9 x i32]* %18, i64 0, i64 0
  %106 = load i64*, i64** %15, align 8
  %107 = load i32**, i32*** %16, align 8
  %108 = call i32 @ChooseContextMap(i32 %104, i32* %105, i64* %106, i32** %107)
  br label %109

109:                                              ; preds = %103, %41
  br label %110

110:                                              ; preds = %29, %109
  ret void
}

declare dso_local i64 @ShouldUseComplexStaticContextMap(i32*, i64, i64, i64, i32, i64, i64*, i32**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ChooseContextMap(i32, i32*, i64*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
