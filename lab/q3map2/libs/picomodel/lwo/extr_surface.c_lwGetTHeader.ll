; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_surface.c_lwGetTHeader.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_surface.c_lwGetTHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8*, %struct.TYPE_4__, i8*, i8*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@PICO_SEEK_CUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lwGetTHeader(i32* %0, i32 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %12 = call i32 @set_flen(i32 0)
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @_pico_memstream_tell(i32* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @getS0(i32* %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i8* @getU4(i32* %19)
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call i8* @getU2(i32* %22)
  %24 = ptrtoint i8* %23 to i16
  store i16 %24, i16* %9, align 2
  %25 = call i32 (...) @get_flen()
  %26 = icmp sgt i32 0, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %125

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %28, %118
  %30 = load i16, i16* %9, align 2
  %31 = zext i16 %30 to i32
  %32 = and i32 %31, 1
  %33 = load i16, i16* %9, align 2
  %34 = zext i16 %33 to i32
  %35 = add nsw i32 %34, %32
  %36 = trunc i32 %35 to i16
  store i16 %36, i16* %9, align 2
  %37 = call i32 @set_flen(i32 0)
  %38 = load i32, i32* %8, align 4
  switch i32 %38, label %74 [
    i32 131, label %39
    i32 128, label %44
    i32 130, label %59
    i32 129, label %64
    i32 132, label %69
  ]

39:                                               ; preds = %29
  %40 = load i32*, i32** %5, align 8
  %41 = call i8* @getU4(i32* %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 5
  store i8* %41, i8** %43, align 8
  br label %75

44:                                               ; preds = %29
  %45 = load i32*, i32** %5, align 8
  %46 = call i8* @getU2(i32* %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @getF4(i32* %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @getVX(i32* %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  br label %75

59:                                               ; preds = %29
  %60 = load i32*, i32** %5, align 8
  %61 = call i8* @getU2(i32* %60)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  br label %75

64:                                               ; preds = %29
  %65 = load i32*, i32** %5, align 8
  %66 = call i8* @getU2(i32* %65)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  br label %75

69:                                               ; preds = %29
  %70 = load i32*, i32** %5, align 8
  %71 = call i8* @getU2(i32* %70)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  br label %75

74:                                               ; preds = %29
  br label %75

75:                                               ; preds = %74, %69, %64, %59, %44, %39
  %76 = call i32 (...) @get_flen()
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %11, align 4
  %81 = load i16, i16* %9, align 2
  %82 = zext i16 %81 to i32
  %83 = icmp sgt i32 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %79, %75
  store i32 0, i32* %4, align 4
  br label %125

85:                                               ; preds = %79
  %86 = load i32, i32* %11, align 4
  %87 = load i16, i16* %9, align 2
  %88 = zext i16 %87 to i32
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load i32*, i32** %5, align 8
  %92 = load i16, i16* %9, align 2
  %93 = zext i16 %92 to i32
  %94 = load i32, i32* %11, align 4
  %95 = sub nsw i32 %93, %94
  %96 = trunc i32 %95 to i16
  %97 = load i32, i32* @PICO_SEEK_CUR, align 4
  %98 = call i32 @_pico_memstream_seek(i32* %91, i16 zeroext %96, i32 %97)
  br label %99

99:                                               ; preds = %90, %85
  %100 = load i32, i32* %6, align 4
  %101 = load i32*, i32** %5, align 8
  %102 = call i32 @_pico_memstream_tell(i32* %101)
  %103 = load i32, i32* %10, align 4
  %104 = sub nsw i32 %102, %103
  %105 = icmp sle i32 %100, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %119

107:                                              ; preds = %99
  %108 = call i32 @set_flen(i32 0)
  %109 = load i32*, i32** %5, align 8
  %110 = call i8* @getU4(i32* %109)
  %111 = ptrtoint i8* %110 to i32
  store i32 %111, i32* %8, align 4
  %112 = load i32*, i32** %5, align 8
  %113 = call i8* @getU2(i32* %112)
  %114 = ptrtoint i8* %113 to i16
  store i16 %114, i16* %9, align 2
  %115 = call i32 (...) @get_flen()
  %116 = icmp ne i32 6, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %107
  store i32 0, i32* %4, align 4
  br label %125

118:                                              ; preds = %107
  br label %29

119:                                              ; preds = %106
  %120 = load i32*, i32** %5, align 8
  %121 = call i32 @_pico_memstream_tell(i32* %120)
  %122 = load i32, i32* %10, align 4
  %123 = sub nsw i32 %121, %122
  %124 = call i32 @set_flen(i32 %123)
  store i32 1, i32* %4, align 4
  br label %125

125:                                              ; preds = %119, %117, %84, %27
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @set_flen(i32) #1

declare dso_local i32 @_pico_memstream_tell(i32*) #1

declare dso_local i32 @getS0(i32*) #1

declare dso_local i8* @getU4(i32*) #1

declare dso_local i8* @getU2(i32*) #1

declare dso_local i32 @get_flen(...) #1

declare dso_local i32 @getF4(i32*) #1

declare dso_local i32 @getVX(i32*) #1

declare dso_local i32 @_pico_memstream_seek(i32*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
