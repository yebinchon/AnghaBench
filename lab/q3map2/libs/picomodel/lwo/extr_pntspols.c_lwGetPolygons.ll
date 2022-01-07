; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_pntspols.c_lwGetPolygons.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_pntspols.c_lwGetPolygons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lwGetPolygons(i32* %0, i32 %1, %struct.TYPE_7__* %2, i32 %3) #0 {
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
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %161

24:                                               ; preds = %4
  %25 = call i32 @set_flen(i32 0)
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @getU4(i32* %26)
  store i32 %27, i32* %20, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %29, 4
  %31 = call i8* @getbytes(i32* %28, i32 %30)
  store i8* %31, i8** %12, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 (...) @get_flen()
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %152

36:                                               ; preds = %24
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %37 = load i8*, i8** %12, align 8
  store i8* %37, i8** %13, align 8
  br label %38

38:                                               ; preds = %64, %36
  %39 = load i8*, i8** %13, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = getelementptr inbounds i8, i8* %43, i64 -4
  %45 = icmp ult i8* %39, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %38
  %47 = call i32 @sgetU2(i8** %13)
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %17, align 4
  %49 = and i32 %48, 1023
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* %18, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %18, align 4
  %53 = load i32, i32* %19, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %19, align 4
  store i32 0, i32* %14, align 4
  br label %55

55:                                               ; preds = %61, %46
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %17, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = call i32 @sgetVX(i8** %13)
  store i32 %60, i32* %15, align 4
  br label %61

61:                                               ; preds = %59
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %14, align 4
  br label %55

64:                                               ; preds = %55
  br label %38

65:                                               ; preds = %38
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %67 = load i32, i32* %19, align 4
  %68 = load i32, i32* %18, align 4
  %69 = call i32 @lwAllocPolygons(%struct.TYPE_7__* %66, i32 %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  br label %152

72:                                               ; preds = %65
  %73 = load i8*, i8** %12, align 8
  store i8* %73, i8** %13, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i64 %80
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %10, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 %91
  store %struct.TYPE_9__* %92, %struct.TYPE_9__** %11, align 8
  store i32 0, i32* %14, align 4
  br label %93

93:                                               ; preds = %146, %72
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %19, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %149

97:                                               ; preds = %93
  %98 = call i32 @sgetU2(i8** %13)
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* %17, align 4
  %100 = and i32 %99, 64512
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %17, align 4
  %102 = and i32 %101, 1023
  store i32 %102, i32* %17, align 4
  %103 = load i32, i32* %17, align 4
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %16, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %20, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = icmp ne %struct.TYPE_9__* %114, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %97
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 3
  store %struct.TYPE_9__* %117, %struct.TYPE_9__** %119, align 8
  br label %120

120:                                              ; preds = %116, %97
  store i32 0, i32* %15, align 4
  br label %121

121:                                              ; preds = %136, %120
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %17, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %139

125:                                              ; preds = %121
  %126 = call i32 @sgetVX(i8** %13)
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %126, %127
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 3
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  store i32 %128, i32* %135, align 4
  br label %136

136:                                              ; preds = %125
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %15, align 4
  br label %121

139:                                              ; preds = %121
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 1
  store %struct.TYPE_8__* %141, %struct.TYPE_8__** %10, align 8
  %142 = load i32, i32* %17, align 4
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i64 %144
  store %struct.TYPE_9__* %145, %struct.TYPE_9__** %11, align 8
  br label %146

146:                                              ; preds = %139
  %147 = load i32, i32* %14, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %14, align 4
  br label %93

149:                                              ; preds = %93
  %150 = load i8*, i8** %12, align 8
  %151 = call i32 @_pico_free(i8* %150)
  store i32 1, i32* %5, align 4
  br label %161

152:                                              ; preds = %71, %35
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

161:                                              ; preds = %158, %149, %23
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local i32 @set_flen(i32) #1

declare dso_local i32 @getU4(i32*) #1

declare dso_local i8* @getbytes(i32*, i32) #1

declare dso_local i32 @get_flen(...) #1

declare dso_local i32 @sgetU2(i8**) #1

declare dso_local i32 @sgetVX(i8**) #1

declare dso_local i32 @lwAllocPolygons(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @_pico_free(i8*) #1

declare dso_local i32 @lwFreePolygons(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
