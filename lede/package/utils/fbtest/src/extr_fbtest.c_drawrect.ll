; ModuleID = '/home/carl/AnghaBench/lede/package/utils/fbtest/src/extr_fbtest.c_drawrect.c'
source_filename = "/home/carl/AnghaBench/lede/package/utils/fbtest/src/extr_fbtest.c_drawrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rect = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pixelformat = type { i32, i32 }
%struct.vidsize = type { i32 }
%struct.pixel = type { i32* }

@.str = private unnamed_addr constant [42 x i8] c"drawrect: unknown pixelformat(%d) bpp:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drawrect(i8* %0, %struct.rect* %1, %struct.pixelformat* %2, %struct.vidsize* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rect*, align 8
  %7 = alloca %struct.pixelformat*, align 8
  %8 = alloca %struct.vidsize*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.pixel, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.rect* %1, %struct.rect** %6, align 8
  store %struct.pixelformat* %2, %struct.pixelformat** %7, align 8
  store %struct.vidsize* %3, %struct.vidsize** %8, align 8
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %15, align 8
  %18 = load %struct.rect*, %struct.rect** %6, align 8
  %19 = getelementptr inbounds %struct.rect, %struct.rect* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %11, align 4
  %21 = load %struct.pixelformat*, %struct.pixelformat** %7, align 8
  %22 = getelementptr inbounds %struct.pixelformat, %struct.pixelformat* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 130
  br i1 %24, label %25, label %51

25:                                               ; preds = %4
  %26 = load %struct.pixelformat*, %struct.pixelformat** %7, align 8
  %27 = getelementptr inbounds %struct.pixelformat, %struct.pixelformat* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 129
  br i1 %29, label %30, label %51

30:                                               ; preds = %25
  %31 = load %struct.pixelformat*, %struct.pixelformat** %7, align 8
  %32 = getelementptr inbounds %struct.pixelformat, %struct.pixelformat* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %36 [
    i32 131, label %34
    i32 128, label %34
    i32 132, label %35
  ]

34:                                               ; preds = %30, %30
  store i32 16, i32* %12, align 4
  store i32 2, i32* %13, align 4
  br label %45

35:                                               ; preds = %30
  store i32 32, i32* %12, align 4
  store i32 4, i32* %13, align 4
  br label %45

36:                                               ; preds = %30
  %37 = load %struct.pixelformat*, %struct.pixelformat** %7, align 8
  %38 = getelementptr inbounds %struct.pixelformat, %struct.pixelformat* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pixelformat*, %struct.pixelformat** %7, align 8
  %41 = getelementptr inbounds %struct.pixelformat, %struct.pixelformat* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42)
  %44 = call i32 @exit(i32 1) #3
  unreachable

45:                                               ; preds = %35, %34
  %46 = load %struct.pixelformat*, %struct.pixelformat** %7, align 8
  %47 = load %struct.rect*, %struct.rect** %6, align 8
  %48 = getelementptr inbounds %struct.rect, %struct.rect* %47, i32 0, i32 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = call i32 @col2pixel(%struct.pixel* %14, %struct.pixelformat* %46, %struct.TYPE_2__* %49)
  br label %85

51:                                               ; preds = %25, %4
  %52 = load %struct.pixelformat*, %struct.pixelformat** %7, align 8
  %53 = getelementptr inbounds %struct.pixelformat, %struct.pixelformat* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %84 [
    i32 130, label %55
    i32 129, label %74
  ]

55:                                               ; preds = %51
  %56 = load %struct.rect*, %struct.rect** %6, align 8
  %57 = getelementptr inbounds %struct.rect, %struct.rect* %56, i32 0, i32 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 4
  %62 = load %struct.rect*, %struct.rect** %6, align 8
  %63 = getelementptr inbounds %struct.rect, %struct.rect* %62, i32 0, i32 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 15
  %68 = or i32 %61, %67
  %69 = getelementptr inbounds %struct.pixel, %struct.pixel* %14, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* %11, align 4
  %73 = ashr i32 %72, 1
  store i32 %73, i32* %11, align 4
  store i32 4, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %84

74:                                               ; preds = %51
  %75 = load %struct.rect*, %struct.rect** %6, align 8
  %76 = getelementptr inbounds %struct.rect, %struct.rect* %75, i32 0, i32 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 255
  %81 = getelementptr inbounds %struct.pixel, %struct.pixel* %14, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 %80, i32* %83, align 4
  store i32 8, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %84

84:                                               ; preds = %51, %74, %55
  br label %85

85:                                               ; preds = %84, %45
  %86 = load i8*, i8** %5, align 8
  %87 = load %struct.rect*, %struct.rect** %6, align 8
  %88 = getelementptr inbounds %struct.rect, %struct.rect* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.vidsize*, %struct.vidsize** %8, align 8
  %91 = getelementptr inbounds %struct.vidsize, %struct.vidsize* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %89, %92
  %94 = load %struct.rect*, %struct.rect** %6, align 8
  %95 = getelementptr inbounds %struct.rect, %struct.rect* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %93, %96
  %98 = load i32, i32* %12, align 4
  %99 = mul nsw i32 %97, %98
  %100 = ashr i32 %99, 3
  %101 = sext i32 %100 to i64
  %102 = getelementptr i8, i8* %86, i64 %101
  store i8* %102, i8** %15, align 8
  store i32 0, i32* %10, align 4
  br label %103

103:                                              ; preds = %139, %85
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.rect*, %struct.rect** %6, align 8
  %106 = getelementptr inbounds %struct.rect, %struct.rect* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %142

109:                                              ; preds = %103
  store i32 0, i32* %16, align 4
  store i32 0, i32* %9, align 4
  br label %110

110:                                              ; preds = %126, %109
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %129

114:                                              ; preds = %110
  %115 = load i8*, i8** %15, align 8
  %116 = load i32, i32* %16, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = getelementptr inbounds %struct.pixel, %struct.pixel* %14, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @memcpy(i8* %118, i32* %120, i32 %121)
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %16, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %16, align 4
  br label %126

126:                                              ; preds = %114
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %110

129:                                              ; preds = %110
  %130 = load %struct.vidsize*, %struct.vidsize** %8, align 8
  %131 = getelementptr inbounds %struct.vidsize, %struct.vidsize* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %12, align 4
  %134 = mul nsw i32 %132, %133
  %135 = ashr i32 %134, 3
  %136 = load i8*, i8** %15, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  store i8* %138, i8** %15, align 8
  br label %139

139:                                              ; preds = %129
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %10, align 4
  br label %103

142:                                              ; preds = %103
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @col2pixel(%struct.pixel*, %struct.pixelformat*, %struct.TYPE_2__*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
