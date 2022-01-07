; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_lightmaps_ydnar.c_WriteTGA24.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_lightmaps_ydnar.c_WriteTGA24.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Unable to open %s for writing\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WriteTGA24(i8* %0, i32* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = mul nsw i32 %16, %17
  %19 = mul nsw i32 %18, 3
  %20 = add nsw i32 %19, 18
  %21 = call i32* @safe_malloc(i32 %20)
  store i32* %21, i32** %13, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = call i32 @memset(i32* %22, i32 0, i32 18)
  %24 = load i32*, i32** %13, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 2, i32* %25, align 4
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, 255
  %28 = load i32*, i32** %13, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 12
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = ashr i32 %30, 8
  %32 = load i32*, i32** %13, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 13
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, 255
  %36 = load i32*, i32** %13, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 14
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %9, align 4
  %39 = ashr i32 %38, 8
  %40 = load i32*, i32** %13, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 15
  store i32 %39, i32* %41, align 4
  %42 = load i32*, i32** %13, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 16
  store i32 24, i32* %43, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 %44, %45
  %47 = mul nsw i32 %46, 3
  %48 = add nsw i32 %47, 18
  store i32 %48, i32* %12, align 4
  store i32 18, i32* %11, align 4
  br label %49

49:                                               ; preds = %89, %5
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %92

53:                                               ; preds = %49
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sub nsw i32 %55, 18
  %57 = add nsw i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %60, i32* %64, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sub nsw i32 %66, 18
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %13, align 8
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  store i32 %71, i32* %76, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sub nsw i32 %78, 18
  %80 = add nsw i32 %79, 0
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %13, align 8
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 2
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  store i32 %83, i32* %88, align 4
  br label %89

89:                                               ; preds = %53
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 3
  store i32 %91, i32* %11, align 4
  br label %49

92:                                               ; preds = %49
  %93 = load i8*, i8** %6, align 8
  %94 = call i32* @fopen(i8* %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %94, i32** %15, align 8
  %95 = load i32*, i32** %15, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @Error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %98)
  br label %100

100:                                              ; preds = %97, %92
  %101 = load i64, i64* %10, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %134

103:                                              ; preds = %100
  %104 = load i32*, i32** %13, align 8
  %105 = load i32*, i32** %15, align 8
  %106 = call i32 @fwrite(i32* %104, i32 1, i32 18, i32* %105)
  %107 = load i32*, i32** %13, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sub nsw i32 %108, 1
  %110 = load i32, i32* %8, align 4
  %111 = mul nsw i32 %109, %110
  %112 = mul nsw i32 %111, 3
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %107, i64 %113
  %115 = getelementptr inbounds i32, i32* %114, i64 18
  store i32* %115, i32** %14, align 8
  br label %116

116:                                              ; preds = %126, %103
  %117 = load i32*, i32** %14, align 8
  %118 = load i32*, i32** %13, align 8
  %119 = icmp uge i32* %117, %118
  br i1 %119, label %120, label %133

120:                                              ; preds = %116
  %121 = load i32*, i32** %14, align 8
  %122 = load i32, i32* %8, align 4
  %123 = mul nsw i32 %122, 3
  %124 = load i32*, i32** %15, align 8
  %125 = call i32 @fwrite(i32* %121, i32 1, i32 %123, i32* %124)
  br label %126

126:                                              ; preds = %120
  %127 = load i32, i32* %8, align 4
  %128 = mul nsw i32 %127, 3
  %129 = load i32*, i32** %14, align 8
  %130 = sext i32 %128 to i64
  %131 = sub i64 0, %130
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32* %132, i32** %14, align 8
  br label %116

133:                                              ; preds = %116
  br label %139

134:                                              ; preds = %100
  %135 = load i32*, i32** %13, align 8
  %136 = load i32, i32* %12, align 4
  %137 = load i32*, i32** %15, align 8
  %138 = call i32 @fwrite(i32* %135, i32 1, i32 %136, i32* %137)
  br label %139

139:                                              ; preds = %134, %133
  %140 = load i32*, i32** %15, align 8
  %141 = call i32 @fclose(i32* %140)
  %142 = load i32*, i32** %13, align 8
  %143 = call i32 @free(i32* %142)
  ret void
}

declare dso_local i32* @safe_malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @Error(i8*, i8*) #1

declare dso_local i32 @fwrite(i32*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
