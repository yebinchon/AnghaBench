; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_imagelib.c_Load32BitImage.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_imagelib.c_Load32BitImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"tga\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Load32BitImage(i8* %0, i32** %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [128 x i8], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %18 = call i32 @ExtractFileExtension(i8* %16, i8* %17)
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %20 = call i32 @Q_stricmp(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %4
  %23 = load i8*, i8** %5, align 8
  %24 = load i32**, i32*** %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @LoadTGA(i8* %23, i32** %24, i32* %25, i32* %26)
  br label %106

28:                                               ; preds = %4
  %29 = load i8*, i8** %5, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @Load256Image(i8* %29, i32** %11, i32** %10, i32* %30, i32* %31)
  %33 = load i32**, i32*** %6, align 8
  %34 = icmp ne i32** %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %106

36:                                               ; preds = %28
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %38, %40
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = mul nsw i32 %42, 4
  %44 = call i32* @safe_malloc(i32 %43)
  store i32* %44, i32** %12, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = load i32**, i32*** %6, align 8
  store i32* %45, i32** %46, align 8
  store i32 0, i32* %14, align 4
  br label %47

47:                                               ; preds = %102, %36
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %105

51:                                               ; preds = %47
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %15, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %15, align 4
  %59 = mul nsw i32 %58, 3
  %60 = add nsw i32 %59, 0
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %12, align 8
  %65 = load i32, i32* %14, align 4
  %66 = mul nsw i32 %65, 4
  %67 = add nsw i32 %66, 0
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  store i32 %63, i32* %69, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %15, align 4
  %72 = mul nsw i32 %71, 3
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %12, align 8
  %78 = load i32, i32* %14, align 4
  %79 = mul nsw i32 %78, 4
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  store i32 %76, i32* %82, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %15, align 4
  %85 = mul nsw i32 %84, 3
  %86 = add nsw i32 %85, 2
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %12, align 8
  %91 = load i32, i32* %14, align 4
  %92 = mul nsw i32 %91, 4
  %93 = add nsw i32 %92, 2
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  store i32 %89, i32* %95, align 4
  %96 = load i32*, i32** %12, align 8
  %97 = load i32, i32* %14, align 4
  %98 = mul nsw i32 %97, 4
  %99 = add nsw i32 %98, 3
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  store i32 255, i32* %101, align 4
  br label %102

102:                                              ; preds = %51
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %14, align 4
  br label %47

105:                                              ; preds = %47
  br label %106

106:                                              ; preds = %35, %105, %22
  ret void
}

declare dso_local i32 @ExtractFileExtension(i8*, i8*) #1

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @LoadTGA(i8*, i32**, i32*, i32*) #1

declare dso_local i32 @Load256Image(i8*, i32**, i32**, i32*, i32*) #1

declare dso_local i32* @safe_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
