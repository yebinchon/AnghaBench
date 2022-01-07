; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_imagelib.c_WritePCXfile.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_imagelib.c_WritePCXfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WritePCXfile(i8* %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = mul nsw i32 %16, %17
  %19 = mul nsw i32 %18, 2
  %20 = add nsw i32 %19, 1000
  %21 = call %struct.TYPE_6__* @safe_malloc(i32 %20)
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %14, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %23 = call i32 @memset(%struct.TYPE_6__* %22, i32 0, i32 88)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 10, i32* %25, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store i32 5, i32* %27, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  store i32 1, i32* %29, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  store i32 8, i32* %31, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 13
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 12
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sub nsw i32 %36, 1
  %38 = trunc i32 %37 to i16
  %39 = sext i16 %38 to i32
  %40 = call i8* @LittleShort(i32 %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 11
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 %43, 1
  %45 = trunc i32 %44 to i16
  %46 = sext i16 %45 to i32
  %47 = call i8* @LittleShort(i32 %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 10
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = trunc i32 %50 to i16
  %52 = sext i16 %51 to i32
  %53 = call i8* @LittleShort(i32 %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 9
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* %9, align 4
  %57 = trunc i32 %56 to i16
  %58 = sext i16 %57 to i32
  %59 = call i8* @LittleShort(i32 %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 8
  store i8* %59, i8** %61, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 4
  store i32 1, i32* %63, align 8
  %64 = load i32, i32* %8, align 4
  %65 = trunc i32 %64 to i16
  %66 = sext i16 %65 to i32
  %67 = call i8* @LittleShort(i32 %66)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 7
  store i8* %67, i8** %69, align 8
  %70 = call i8* @LittleShort(i32 1)
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 6
  store i8* %70, i8** %72, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 5
  store i32* %74, i32** %15, align 8
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %108, %5
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %111

79:                                               ; preds = %75
  store i32 0, i32* %12, align 4
  br label %80

80:                                               ; preds = %104, %79
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %107

84:                                               ; preds = %80
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 192
  %88 = icmp ne i32 %87, 192
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load i32*, i32** %7, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %7, align 8
  %92 = load i32, i32* %90, align 4
  %93 = load i32*, i32** %15, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %15, align 8
  store i32 %92, i32* %93, align 4
  br label %103

95:                                               ; preds = %84
  %96 = load i32*, i32** %15, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %15, align 8
  store i32 193, i32* %96, align 4
  %98 = load i32*, i32** %7, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %7, align 8
  %100 = load i32, i32* %98, align 4
  %101 = load i32*, i32** %15, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %15, align 8
  store i32 %100, i32* %101, align 4
  br label %103

103:                                              ; preds = %95, %89
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %12, align 4
  br label %80

107:                                              ; preds = %80
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %75

111:                                              ; preds = %75
  %112 = load i32*, i32** %15, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %15, align 8
  store i32 12, i32* %112, align 4
  store i32 0, i32* %11, align 4
  br label %114

114:                                              ; preds = %123, %111
  %115 = load i32, i32* %11, align 4
  %116 = icmp slt i32 %115, 768
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load i32*, i32** %10, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %10, align 8
  %120 = load i32, i32* %118, align 4
  %121 = load i32*, i32** %15, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %15, align 8
  store i32 %120, i32* %121, align 4
  br label %123

123:                                              ; preds = %117
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  br label %114

126:                                              ; preds = %114
  %127 = load i32*, i32** %15, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %129 = bitcast %struct.TYPE_6__* %128 to i32*
  %130 = ptrtoint i32* %127 to i64
  %131 = ptrtoint i32* %129 to i64
  %132 = sub i64 %130, %131
  %133 = sdiv exact i64 %132, 4
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %13, align 4
  %135 = load i8*, i8** %6, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @SaveFile(i8* %135, %struct.TYPE_6__* %136, i32 %137)
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %140 = call i32 @free(%struct.TYPE_6__* %139)
  ret void
}

declare dso_local %struct.TYPE_6__* @safe_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i8* @LittleShort(i32) #1

declare dso_local i32 @SaveFile(i8*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
