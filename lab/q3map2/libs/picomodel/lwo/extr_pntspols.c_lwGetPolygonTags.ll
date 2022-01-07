; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_pntspols.c_lwGetPolygonTags.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_pntspols.c_lwGetPolygonTags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32* }

@PICO_SEEK_CUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lwGetPolygonTags(i32* %0, i32 %1, %struct.TYPE_7__* %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  store i32 0, i32* %11, align 4
  %14 = call i32 @set_flen(i32 0)
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @getU4(i32* %15)
  store i32 %16, i32* %10, align 4
  %17 = call i32 (...) @get_flen()
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %95

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 128
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 130
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 129
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 %32, 4
  %34 = load i32, i32* @PICO_SEEK_CUR, align 4
  %35 = call i32 @_pico_memstream_seek(i32* %31, i32 %33, i32 %34)
  store i32 1, i32* %5, align 4
  br label %95

36:                                               ; preds = %27, %24, %21
  br label %37

37:                                               ; preds = %93, %36
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %94

41:                                               ; preds = %37
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @getVX(i32* %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %43, %46
  store i32 %47, i32* %12, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @getVX(i32* %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %49, %52
  store i32 %53, i32* %13, align 4
  %54 = call i32 (...) @get_flen()
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %41
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %41
  store i32 0, i32* %5, align 4
  br label %95

62:                                               ; preds = %57
  %63 = load i32, i32* %10, align 4
  switch i32 %63, label %93 [
    i32 128, label %64
    i32 130, label %75
    i32 129, label %84
  ]

64:                                               ; preds = %62
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i32*
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  store i32* %67, i32** %74, align 8
  br label %93

75:                                               ; preds = %62
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  store i32 %76, i32* %83, align 8
  br label %93

84:                                               ; preds = %62
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  store i32 %85, i32* %92, align 4
  br label %93

93:                                               ; preds = %62, %84, %75, %64
  br label %37

94:                                               ; preds = %37
  store i32 1, i32* %5, align 4
  br label %95

95:                                               ; preds = %94, %61, %30, %20
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @set_flen(i32) #1

declare dso_local i32 @getU4(i32*) #1

declare dso_local i32 @get_flen(...) #1

declare dso_local i32 @_pico_memstream_seek(i32*, i32, i32) #1

declare dso_local i32 @getVX(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
