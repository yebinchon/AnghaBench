; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_lwob.c_lwGetPolygons5.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_lwob.c_lwGetPolygons5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32*, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }

@ID_FACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lwGetPolygons5(i32* %0, i32 %1, %struct.TYPE_7__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %161

22:                                               ; preds = %4
  %23 = call i32 @set_flen(i32 0)
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i8* @getbytes(i32* %24, i32 %25)
  store i8* %26, i8** %12, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %152

30:                                               ; preds = %22
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %31 = load i8*, i8** %12, align 8
  store i8* %31, i8** %13, align 8
  br label %32

32:                                               ; preds = %57, %30
  %33 = load i8*, i8** %13, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = icmp ult i8* %33, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %32
  %40 = call i32 @sgetU2(i8** %13)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %17, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %18, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %18, align 4
  %46 = load i32, i32* %16, align 4
  %47 = mul nsw i32 2, %46
  %48 = load i8*, i8** %13, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %13, align 8
  %51 = call i32 @sgetI2(i8** %13)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %39
  %55 = load i8*, i8** %13, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  store i8* %56, i8** %13, align 8
  br label %57

57:                                               ; preds = %54, %39
  br label %32

58:                                               ; preds = %32
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %17, align 4
  %62 = call i32 @lwAllocPolygons(%struct.TYPE_7__* %59, i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  br label %152

65:                                               ; preds = %58
  %66 = load i8*, i8** %12, align 8
  store i8* %66, i8** %13, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i64 %73
  store %struct.TYPE_8__* %74, %struct.TYPE_8__** %10, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i64 %84
  store %struct.TYPE_9__* %85, %struct.TYPE_9__** %11, align 8
  store i32 0, i32* %14, align 4
  br label %86

86:                                               ; preds = %146, %65
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %18, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %149

90:                                               ; preds = %86
  %91 = call i32 @sgetU2(i8** %13)
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* @ID_FACE, align 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = icmp ne %struct.TYPE_9__* %100, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %90
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  store %struct.TYPE_9__* %103, %struct.TYPE_9__** %105, align 8
  br label %106

106:                                              ; preds = %102, %90
  store i32 0, i32* %15, align 4
  br label %107

107:                                              ; preds = %120, %106
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %16, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %107
  %112 = call i32 @sgetU2(i8** %13)
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %112, %113
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %116 = load i32, i32* %15, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  store i32 %114, i32* %119, align 4
  br label %120

120:                                              ; preds = %111
  %121 = load i32, i32* %15, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %15, align 4
  br label %107

123:                                              ; preds = %107
  %124 = call i32 @sgetI2(i8** %13)
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %15, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = load i32, i32* %15, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %15, align 4
  %130 = load i8*, i8** %13, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 2
  store i8* %131, i8** %13, align 8
  br label %132

132:                                              ; preds = %127, %123
  %133 = load i32, i32* %15, align 4
  %134 = sub nsw i32 %133, 1
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = inttoptr i64 %136 to i32*
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  store i32* %137, i32** %139, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 1
  store %struct.TYPE_8__* %141, %struct.TYPE_8__** %10, align 8
  %142 = load i32, i32* %16, align 4
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i64 %144
  store %struct.TYPE_9__* %145, %struct.TYPE_9__** %11, align 8
  br label %146

146:                                              ; preds = %132
  %147 = load i32, i32* %14, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %14, align 4
  br label %86

149:                                              ; preds = %86
  %150 = load i8*, i8** %12, align 8
  %151 = call i32 @_pico_free(i8* %150)
  store i32 1, i32* %5, align 4
  br label %161

152:                                              ; preds = %64, %29
  %153 = load i8*, i8** %12, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i8*, i8** %12, align 8
  %157 = call i32 @_pico_free(i8* %156)
  br label %158

158:                                              ; preds = %155, %152
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %160 = call i32 @lwFreePolygons(%struct.TYPE_7__* %159)
  store i32 0, i32* %5, align 4
  br label %161

161:                                              ; preds = %158, %149, %21
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local i32 @set_flen(i32) #1

declare dso_local i8* @getbytes(i32*, i32) #1

declare dso_local i32 @sgetU2(i8**) #1

declare dso_local i32 @sgetI2(i8**) #1

declare dso_local i32 @lwAllocPolygons(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @_pico_free(i8*) #1

declare dso_local i32 @lwFreePolygons(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
